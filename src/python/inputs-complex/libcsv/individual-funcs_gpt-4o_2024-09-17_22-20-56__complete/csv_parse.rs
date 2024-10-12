use std::ffi::c_void;
use std::ptr;

struct CsvParser<'a> {
    pstate: i32,
    quoted: i32,
    spaces: usize,
    entry_buf: Option<&'a mut [u8]>,
    entry_pos: usize,
    entry_size: usize,
    status: i32,
    options: u8,
    quote_char: u8,
    delim_char: u8,
    is_space: fn(u8) -> i32,
    is_term: fn(u8) -> i32,
    blk_size: usize,
    malloc_func: fn(usize) -> *mut c_void,
    realloc_func: fn(*mut c_void, usize) -> *mut c_void,
    free_func: fn(*mut c_void),
}

extern "C" {
    fn __assert_fail(
        assertion: *const i8,
        file: *const i8,
        line: u32,
        function: *const i8,
    ) -> !;
}

fn csv_parse(
    p: &mut CsvParser,
    s: *const u8,
    len: usize,
    cb1: Option<fn(*const u8, usize, *mut c_void)>,
    cb2: Option<fn(i32, *mut c_void)>,
    data: *mut c_void,
) -> usize {
    unsafe {
        if p.is_null() {
            __assert_fail(
                b"p && \"received null csv_parser\"\0".as_ptr() as *const i8,
                b"libcsv.c\0".as_ptr() as *const i8,
                321,
                b"csv_parse\0".as_ptr() as *const i8,
            );
        }
    }

    if s.is_null() {
        return 0;
    }

    let us = unsafe { std::slice::from_raw_parts(s, len) };
    let mut pos = 0;
    let delim = p.delim_char;
    let quote = p.quote_char;
    let is_space = p.is_space;
    let is_term = p.is_term;
    let mut quoted = p.quoted;
    let mut pstate = p.pstate;
    let mut spaces = p.spaces;
    let mut entry_pos = p.entry_pos;

    if p.entry_buf.is_none() && pos < len {
        if csv_increase_buffer(p) != 0 {
            p.quoted = quoted;
            p.pstate = pstate;
            p.spaces = spaces;
            p.entry_pos = entry_pos;
            return pos;
        }
    }

    while pos < len {
        if entry_pos == (if (p.options & 8) != 0 { p.entry_size - 1 } else { p.entry_size }) {
            if csv_increase_buffer(p) != 0 {
                p.quoted = quoted;
                p.pstate = pstate;
                p.spaces = spaces;
                p.entry_pos = entry_pos;
                return pos;
            }
        }

        let c = us[pos];
        pos += 1;

        match pstate {
            0 | 1 => {
                if (is_space)(c) != 0 && c != delim {
                    continue;
                } else if (is_term)(c) != 0 {
                    if pstate == 1 {
                        if !quoted {
                            entry_pos -= spaces;
                        }
                        if (p.options & 8) != 0 {
                            p.entry_buf.as_mut().unwrap()[entry_pos] = 0;
                        }
                        if let Some(cb1) = cb1 {
                            if (p.options & 16) != 0 && !quoted && entry_pos == 0 {
                                cb1(ptr::null(), entry_pos, data);
                            } else {
                                cb1(p.entry_buf.as_mut().unwrap().as_ptr(), entry_pos, data);
                            }
                        }
                        pstate = 1;
                        entry_pos = 0;
                        quoted = 0;
                        spaces = 0;
                    }
                    if let Some(cb2) = cb2 {
                        cb2(c as i32, data);
                    }
                    pstate = 0;
                    entry_pos = 0;
                    quoted = 0;
                    spaces = 0;
                    continue;
                } else if c == delim {
                    if !quoted {
                        entry_pos -= spaces;
                    }
                    if (p.options & 8) != 0 {
                        p.entry_buf.as_mut().unwrap()[entry_pos] = 0;
                    }
                    if let Some(cb1) = cb1 {
                        if (p.options & 16) != 0 && !quoted && entry_pos == 0 {
                            cb1(ptr::null(), entry_pos, data);
                        } else {
                            cb1(p.entry_buf.as_mut().unwrap().as_ptr(), entry_pos, data);
                        }
                    }
                    pstate = 1;
                    entry_pos = 0;
                    quoted = 0;
                    spaces = 0;
                } else if c == quote {
                    pstate = 2;
                    quoted = 1;
                } else {
                    pstate = 2;
                    quoted = 0;
                    p.entry_buf.as_mut().unwrap()[entry_pos] = c;
                    entry_pos += 1;
                }
            }
            2 => {
                if c == quote {
                    if quoted != 0 {
                        p.entry_buf.as_mut().unwrap()[entry_pos] = c;
                        entry_pos += 1;
                        pstate = 3;
                    } else {
                        if (p.options & 1) != 0 {
                            p.status = 1;
                            p.quoted = quoted;
                            p.pstate = pstate;
                            p.spaces = spaces;
                            p.entry_pos = entry_pos;
                            return pos - 1;
                        }
                        p.entry_buf.as_mut().unwrap()[entry_pos] = c;
                        entry_pos += 1;
                        spaces = 0;
                    }
                } else if c == delim {
                    if quoted != 0 {
                        p.entry_buf.as_mut().unwrap()[entry_pos] = c;
                        entry_pos += 1;
                    } else {
                        if !quoted {
                            entry_pos -= spaces;
                        }
                        if (p.options & 8) != 0 {
                            p.entry_buf.as_mut().unwrap()[entry_pos] = 0;
                        }
                        if let Some(cb1) = cb1 {
                            if (p.options & 16) != 0 && !quoted && entry_pos == 0 {
                                cb1(ptr::null(), entry_pos, data);
                            } else {
                                cb1(p.entry_buf.as_mut().unwrap().as_ptr(), entry_pos, data);
                            }
                        }
                        pstate = 1;
                        entry_pos = 0;
                        quoted = 0;
                        spaces = 0;
                    }
                } else if (is_term)(c) != 0 {
                    if quoted == 0 {
                        if !quoted {
                            entry_pos -= spaces;
                        }
                        if (p.options & 8) != 0 {
                            p.entry_buf.as_mut().unwrap()[entry_pos] = 0;
                        }
                        if let Some(cb1) = cb1 {
                            if (p.options & 16) != 0 && !quoted && entry_pos == 0 {
                                cb1(ptr::null(), entry_pos, data);
                            } else {
                                cb1(p.entry_buf.as_mut().unwrap().as_ptr(), entry_pos, data);
                            }
                        }
                        pstate = 1;
                        entry_pos = 0;
                        quoted = 0;
                        spaces = 0;
                        if let Some(cb2) = cb2 {
                            cb2(c as i32, data);
                        }
                        pstate = 0;
                        entry_pos = 0;
                        quoted = 0;
                        spaces = 0;
                    } else {
                        p.entry_buf.as_mut().unwrap()[entry_pos] = c;
                        entry_pos += 1;
                    }
                } else if quoted == 0 && (is_space)(c) != 0 {
                    p.entry_buf.as_mut().unwrap()[entry_pos] = c;
                    entry_pos += 1;
                    spaces += 1;
                } else {
                    p.entry_buf.as_mut().unwrap()[entry_pos] = c;
                    entry_pos += 1;
                    spaces = 0;
                }
            }
            3 => {
                if c == delim {
                    entry_pos -= spaces + 1;
                    if !quoted {
                        entry_pos -= spaces;
                    }
                    if (p.options & 8) != 0 {
                        p.entry_buf.as_mut().unwrap()[entry_pos] = 0;
                    }
                    if let Some(cb1) = cb1 {
                        if (p.options & 16) != 0 && !quoted && entry_pos == 0 {
                            cb1(ptr::null(), entry_pos, data);
                        } else {
                            cb1(p.entry_buf.as_mut().unwrap().as_ptr(), entry_pos, data);
                        }
                    }
                    pstate = 1;
                    entry_pos = 0;
                    quoted = 0;
                    spaces = 0;
                } else if (is_term)(c) != 0 {
                    entry_pos -= spaces + 1;
                    if !quoted {
                        entry_pos -= spaces;
                    }
                    if (p.options & 8) != 0 {
                        p.entry_buf.as_mut().unwrap()[entry_pos] = 0;
                    }
                    if let Some(cb1) = cb1 {
                        if (p.options & 16) != 0 && !quoted && entry_pos == 0 {
                            cb1(ptr::null(), entry_pos, data);
                        } else {
                            cb1(p.entry_buf.as_mut().unwrap().as_ptr(), entry_pos, data);
                        }
                    }
                    pstate = 1;
                    entry_pos = 0;
                    quoted = 0;
                    spaces = 0;
                    if let Some(cb2) = cb2 {
                        cb2(c as i32, data);
                    }
                    pstate = 0;
                    entry_pos = 0;
                    quoted = 0;
                    spaces = 0;
                } else if (is_space)(c) != 0 {
                    p.entry_buf.as_mut().unwrap()[entry_pos] = c;
                    entry_pos += 1;
                    spaces += 1;
                } else if c == quote {
                    if spaces != 0 {
                        if (p.options & 1) != 0 {
                            p.status = 1;
                            p.quoted = quoted;
                            p.pstate = pstate;
                            p.spaces = spaces;
                            p.entry_pos = entry_pos;
                            return pos - 1;
                        }
                        spaces = 0;
                        p.entry_buf.as_mut().unwrap()[entry_pos] = c;
                        entry_pos += 1;
                    } else {
                        pstate = 2;
                    }
                } else {
                    if (p.options & 1) != 0 {
                        p.status = 1;
                        p.quoted = quoted;
                        p.pstate = pstate;
                        p.spaces = spaces;
                        p.entry_pos = entry_pos;
                        return pos - 1;
                    }
                    pstate = 2;
                    spaces = 0;
                    p.entry_buf.as_mut().unwrap()[entry_pos] = c;
                    entry_pos += 1;
                }
            }
            _ => {}
        }
    }

    p.quoted = quoted;
    p.pstate = pstate;
    p.spaces = spaces;
    p.entry_pos = entry_pos;
    pos
}
