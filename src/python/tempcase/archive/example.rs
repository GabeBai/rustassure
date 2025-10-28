pub const CSV_ETOOBIG: i32 = 1;
pub const CSV_ENOMEM: i32 = 2;

pub struct CsvParser {
    /// Parser state
    pub pstate: i32,
    /// Is the current field a quoted field?
    pub quoted: bool,
    /// Number of continuous spaces after a quote or in a non-quoted field
    pub spaces: usize,
    /// Entry buffer: we use a Vec<u8> so that pushing bytes and ensuring a terminating 0 is easy.
    /// The "entry position" is effectively the current length of the vector.
    pub entry: Vec<u8>,
    /// Operation status
    pub status: i32,
    /// Options flag value
    pub options: u8,
    /// Quote character
    pub quote_char: u8,
    /// Delimiter character
    pub delim_char: u8,
    /// Function for determining whether a byte is a space.
    /// If set, a given byte is a space when this function returns true.
    pub is_space: Option<Box<dyn Fn(u8) -> bool>>,
    /// Function for determining whether a byte is a line terminator.
    pub is_term: Option<Box<dyn Fn(u8) -> bool>>,
    /// Block size used for buffer reallocation.
    pub blk_size: usize,
}

impl CsvParser {
    /// Increases the capacity of the entry buffer by at least blk_size bytes.
    /// Returns Ok(()) on success or Err(()) on failure after updating status.
    pub fn increase_buffer(&mut self) -> Result<(), ()> {
        // Use blk_size as the initial additional capacity requested.
        let mut to_add = self.blk_size;
        // The Vec’s capacity acts as “entry_size”. (Using capacity instead of len.)
        let current_capacity = self.entry.capacity();

        // Check if adding to_add bytes would push us over usize::MAX.
        // In C one compares against SIZE_MAX; here we use usize::MAX.
        if current_capacity >= usize::MAX.wrapping_sub(to_add) {
            to_add = usize::MAX.wrapping_sub(current_capacity);
        }

        if to_add == 0 {
            self.status = CSV_ETOOBIG;
            return Err(());
        }

        // Try to reserve extra space. On allocation failure, try with half as many bytes.
        // Note: try_reserve_exact returns a Result which is Err if allocation fails.
        while let Err(_) = self.entry.try_reserve_exact(to_add) {
            to_add /= 2;
            if to_add == 0 {
                self.status = CSV_ENOMEM;
                return Err(());
            }
        }

        // If we get here, the reservation succeeded.
        Ok(())
    }
}

fn append_byte(entry: &mut Vec<u8>, entry_pos: &mut usize, byte: u8) {
    if *entry_pos < entry.len() {
        entry[*entry_pos] = byte;
    } else {
        entry.push(byte);
    }
    *entry_pos += 1;
}

pub fn csv_parse<T, F1, F2>(
    p: &mut CsvParser,
    s: &[u8],
    mut cb1: Option<&mut F1>,
    mut cb2: Option<&mut F2>,
    data: &mut T,
) -> usize
    where
    F1: FnMut(&[u8], usize, &mut T),
    F2: FnMut(u8, &mut T),
    {
        if s.is_empty() {
            return 0;
        }
        let bytes = s;
        let mut pos: usize = 0;
        let delim = p.delim_char;
        let quote = p.quote_char;
        // Make local copies of state.
        let mut quoted: bool = p.quoted;
        let mut state: i32 = p.pstate;
        let mut spaces: usize = p.spaces;
        let mut entry_pos: usize = p.entry.len();

        // Ensure that the entry buffer is allocated.
        if p.entry.is_empty() && pos < bytes.len() {
            if p.increase_buffer().is_err() {
                // Restore state and return.
                p.quoted = quoted;
                p.pstate = state;
                p.spaces = spaces;
                return pos;
            }
        }

        // Local helper closure: check whether room exists for at least one more byte
        // (or, when requested, room for an extra NUL) and increase p.entry if needed.
        let mut ensure_capacity = |p: &mut CsvParser, entry_pos: usize| -> Result<(), ()> {
            let cap = p.entry.capacity();
            let limit = if (p.options & 8) != 0 {
                cap.saturating_sub(1)
            } else {
                cap
            };
            if entry_pos >= limit {
                p.increase_buffer()
            } else {
                Ok(())
            }
        };

        while pos < bytes.len() {
            // Make sure there is room for one more byte.
            if ensure_capacity(p, entry_pos).is_err() {
                p.quoted = quoted;
                p.pstate = state;
                p.spaces = spaces;
                return pos;
            }
            let c: u8 = bytes[pos];
            pos += 1;

            match state {
                // States 0 and 1: Skip spaces (unless they are the delimiter) and examine terminators.
                0 | 1 => {
                    let space_cond = if let Some(space_fn) = p.is_space.as_deref() {
                        space_fn(c)
                    } else {
                        c == b' ' || c == 0x09
                    };
                    let term_cond = if let Some(term_fn) = p.is_term.as_deref() {
                        term_fn(c)
                    } else {
                        c == 0x0d || c == 0x0a
                    };
                    if space_cond && c != delim {
                        continue;
                    } else if term_cond {
                        if state == 1 {
                            // Finish the current field.
                            if !quoted {
                                entry_pos = entry_pos.saturating_sub(spaces);
                            }
                            if (p.options & 8) != 0 {
                                if ensure_capacity(p, entry_pos).is_err() {
                                    p.quoted = quoted;
                                    p.pstate = state;
                                    p.spaces = spaces;
                                    return pos;
                                }
                                append_byte(&mut p.entry, &mut entry_pos, 0);
                            }
                            if let Some(cb) = cb1.as_mut() {
                                // If option 16 is set and this is an unquoted empty field send an empty slice.
                                if (p.options & 16) != 0 && !quoted && entry_pos == 0 {
                                    cb(&[], entry_pos, data);
                                } else {
                                    cb(&p.entry[..entry_pos], entry_pos, data);
                                }
                            }
                            // Reset for the next field.
                            state = 1;
                            entry_pos = 0;
                            quoted = false;
                            spaces = 0;
                        } else {
                            // state == 0.
                            if (p.options & 2) != 0 {
                                if let Some(cb) = cb2.as_mut() {
                                    cb(c, data);
                                }
                                state = 0;
                                entry_pos = 0;
                                quoted = false;
                                spaces = 0;
                            }
                        }
                        continue;
                    } else if c == delim {
                        // Finish the field.
                        if !quoted {
                            entry_pos = entry_pos.saturating_sub(spaces);
                        }
                        if (p.options & 8) != 0 {
                            if ensure_capacity(p, entry_pos).is_err() {
                                p.quoted = quoted;
                                p.pstate = state;
                                p.spaces = spaces;
                                return pos;
                            }
                            append_byte(&mut p.entry, &mut entry_pos, 0);
                        }
                        if let Some(cb) = cb1.as_mut() {
                            if (p.options & 16) != 0 && !quoted && entry_pos == 0 {
                                cb(&[], entry_pos, data);
                            } else {
                                cb(&p.entry[..entry_pos], entry_pos, data);
                            }
                        }
                        state = 1;
                        entry_pos = 0;
                        quoted = false;
                        spaces = 0;
                    } else if c == quote {
                        state = 2;
                        quoted = true;
                    } else {
                        state = 2;
                        quoted = false;
                        append_byte(&mut p.entry, &mut entry_pos, c);
                    }
                }
                // State 2: Reading inside a field.
                2 => {
                    if c == quote {
                        if quoted {
                            append_byte(&mut p.entry, &mut entry_pos, c);
                            state = 3;
                        } else {
                            if (p.options & 1) != 0 {
                                p.status = 1;
                                p.quoted = quoted;
                                p.pstate = state;
                                p.spaces = spaces;
                                return pos - 1;
                            }
                            append_byte(&mut p.entry, &mut entry_pos, c);
                            spaces = 0;
                        }
                    } else if c == delim {
                        if quoted {
                            // In a quoted field, the delimiter is part of the field.
                            append_byte(&mut p.entry, &mut entry_pos, c);
                        } else {
                            if !quoted {
                                entry_pos = entry_pos.saturating_sub(spaces);
                            }
                            if (p.options & 8) != 0 {
                                if ensure_capacity(p, entry_pos).is_err() {
                                    p.quoted = quoted;
                                    p.pstate = state;
                                    p.spaces = spaces;
                                    return pos;
                                }
                                append_byte(&mut p.entry, &mut entry_pos, 0);
                            }
                            if let Some(cb) = cb1.as_mut() {
                                if (p.options & 16) != 0 && !quoted && entry_pos == 0 {
                                    cb(&[], entry_pos, data);
                                } else {
                                    cb(&p.entry[..entry_pos], entry_pos, data);
                                }
                            }
                            state = 1;
                            entry_pos = 0;
                            quoted = false;
                            spaces = 0;
                        }
                    } else if {
                        // Determine if c is a line terminator.
                        if let Some(term_fn) = p.is_term.as_deref() {
                            term_fn(c)
                        } else {
                            c == 0x0d || c == 0x0a
                        }
                    } {
                        if !quoted {
                            entry_pos = entry_pos.saturating_sub(spaces);
                            if (p.options & 8) != 0 {
                                if ensure_capacity(p, entry_pos).is_err() {
                                    p.quoted = quoted;
                                    p.pstate = state;
                                    p.spaces = spaces;
                                    return pos;
                                }
                                append_byte(&mut p.entry, &mut entry_pos, 0);
                            }
                            if let Some(cb) = cb1.as_mut() {
                                if (p.options & 16) != 0 && !quoted && entry_pos == 0 {
                                    cb(&[], entry_pos, data);
                                } else {
                                    cb(&p.entry[..entry_pos], entry_pos, data);
                                }
                            }
                            state = 1;
                            entry_pos = 0;
                            quoted = false;
                            spaces = 0;

                            if let Some(cb) = cb2.as_mut() {
                                cb(c, data);
                            }
                            state = 0;
                            entry_pos = 0;
                            quoted = false;
                            spaces = 0;
                        } else {
                            append_byte(&mut p.entry, &mut entry_pos, c);
                        }
                    } else if !quoted && {
                        if let Some(space_fn) = p.is_space.as_deref() {
                            space_fn(c)
                        } else {
                            c == b' ' || c == 0x09
                        }
                    } {
                        append_byte(&mut p.entry, &mut entry_pos, c);
                        spaces += 1;
                    } else {
                        append_byte(&mut p.entry, &mut entry_pos, c);
                        spaces = 0;
                    }
                }
                // State 3: We've just seen a quote that might terminate a quoted field.
                3 => {
                    if c == delim {
                        // “Undo” trailing spaces and the extra quote.
                        entry_pos = entry_pos.saturating_sub(spaces + 1);
                        if !quoted {
                            entry_pos = entry_pos.saturating_sub(spaces);
                        }
                        if (p.options & 8) != 0 {
                            if ensure_capacity(p, entry_pos).is_err() {
                                p.quoted = quoted;
                                p.pstate = state;
                                p.spaces = spaces;
                                return pos;
                            }
                            append_byte(&mut p.entry, &mut entry_pos, 0);
                        }
                        if let Some(cb) = cb1.as_mut() {
                            if (p.options & 16) != 0 && !quoted && entry_pos == 0 {
                                cb(&[], entry_pos, data);
                            } else {
                                cb(&p.entry[..entry_pos], entry_pos, data);
                            }
                        }
                        state = 1;
                        entry_pos = 0;
                        quoted = false;
                        spaces = 0;
                    } else if {
                        if let Some(term_fn) = p.is_term.as_deref() {
                            term_fn(c)
                        } else {
                            c == 0x0d || c == 0x0a
                        }
                    } {
                        entry_pos = entry_pos.saturating_sub(spaces + 1);
                        if !quoted {
                            entry_pos = entry_pos.saturating_sub(spaces);
                        }
                        if (p.options & 8) != 0 {
                            if ensure_capacity(p, entry_pos).is_err() {
                                p.quoted = quoted;
                                p.pstate = state;
                                p.spaces = spaces;
                                return pos;
                            }
                            append_byte(&mut p.entry, &mut entry_pos, 0);
                        }
                        if let Some(cb) = cb1.as_mut() {
                            if (p.options & 16) != 0 && !quoted && entry_pos == 0 {
                                cb(&[], entry_pos, data);
                            } else {
                                cb(&p.entry[..entry_pos], entry_pos, data);
                            }
                        }
                        state = 1;
                        entry_pos = 0;
                        quoted = false;
                        spaces = 0;
                        if let Some(cb) = cb2.as_mut() {
                            cb(c, data);
                        }
                        state = 0;
                        entry_pos = 0;
                        quoted = false;
                        spaces = 0;
                    } else if {
                        if let Some(space_fn) = p.is_space.as_deref() {
                            space_fn(c)
                        } else {
                            c == b' ' || c == 0x09
                        }
                    } {
                        append_byte(&mut p.entry, &mut entry_pos, c);
                        spaces += 1;
                    } else if c == quote {
                        if spaces != 0 {
                            if (p.options & 1) != 0 {
                                p.status = 1;
                                p.quoted = quoted;
                                p.pstate = state;
                                p.spaces = spaces;
                                return pos - 1;
                            }
                            spaces = 0;
                            append_byte(&mut p.entry, &mut entry_pos, c);
                        } else {
                            state = 2;
                        }
                    } else {
                        if (p.options & 1) != 0 {
                            p.status = 1;
                            p.quoted = quoted;
                            p.pstate = state;
                            p.spaces = spaces;
                            return pos - 1;
                        }
                        state = 2;
                        spaces = 0;
                        append_byte(&mut p.entry, &mut entry_pos, c);
                    }
                }
                _ => { /* no default action */ }
            } // end match
        } // end while

        // Save parser state back.
        p.quoted = quoted;
        p.pstate = state;
        p.spaces = spaces;
        // Record the final entry; here we simply truncate the internal Vec.
        p.entry.truncate(entry_pos);
        pos
}



fn main() {

}