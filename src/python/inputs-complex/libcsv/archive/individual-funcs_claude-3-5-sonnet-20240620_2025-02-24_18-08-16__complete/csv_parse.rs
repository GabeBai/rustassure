use std::assert;

pub fn csv_parse(
    p: &mut csv_parser,
    s: *const libc::c_void,
    len: usize,
    cb1: Option<unsafe extern "C" fn(*mut libc::c_void, usize, *mut libc::c_void)>,
    cb2: Option<unsafe extern "C" fn(libc::c_int, *mut libc::c_void)>,
    data: *mut libc::c_void,
) -> usize {
    assert!(p != std::ptr::null_mut(), "received null csv_parser");
    if s.is_null() {
        return 0;
    }

    let us = s as *const u8;
    let mut pos = 0;
    let delim = p.delim_char;
    let quote = p.quote_char;
    let is_space = p.is_space;
    let is_term = p.is_term;
    let mut quoted = p.quoted;
    let mut pstate = p.pstate;
    let mut spaces = p.spaces;
    let mut entry_pos = p.entry_pos;

    if p.entry_buf.is_null() && pos < len {
        if csv_increase_buffer(p) != 0 {
            p.quoted = quoted;
            p.pstate = pstate;
            p.spaces = spaces;
            p.entry_pos = entry_pos;
            return pos;
        }
    }

    while pos < len {
        if entry_pos == (if p.options & 8 != 0 { p.entry_size - 1 } else { p.entry_size }) {
            if csv_increase_buffer(p) != 0 {
                p.quoted = quoted;
                p.pstate = pstate;
                p.spaces = spaces;
                p.entry_pos = entry_pos;
                return pos;
            }
        }

        let c = unsafe { *us.add(pos) };
        pos += 1;

        match pstate {
            0 | 1 => {
                if (is_space.map_or(c == 0x20 || c == 0x09, |f| f(c))) && c != delim {
                    continue;
                } else if is_term.map_or(c == 0x0d || c == 0x0a, |f| f(c)) {
                    if pstate == 1 {
                        end_field(p, &mut quoted, &mut entry_pos, &mut spaces, cb1, data);
                        end_line(p, c, &mut pstate, &mut entry_pos, &mut quoted, &mut spaces, cb2, data);
                    } else if p.options & 2 != 0 {
                        end_line(p, c, &mut pstate, &mut entry_pos, &mut quoted, &mut spaces, cb2, data);
                    }
                    continue;
                } else if c == delim {
                    end_field(p, &mut quoted, &mut entry_pos, &mut spaces, cb1, data);
                } else if c == quote {
                    pstate = 2;
                    quoted = 1;
                } else {
                    pstate = 2;
                    quoted = 0;
                    unsafe { *p.entry_buf.add(entry_pos) = c };
                    entry_pos += 1;
                }
            }
            2 => {
                if c == quote {
                    if quoted != 0 {
                        unsafe { *p.entry_buf.add(entry_pos) = c };
                        entry_pos += 1;
                        pstate = 3;
                    } else {
                        if p.options & 1 != 0 {
                            p.status = 1;
                            p.quoted = quoted;
                            p.pstate = pstate;
                            p.spaces = spaces;
                            p.entry_pos = entry_pos;
                            return pos - 1;
                        }
                        unsafe { *p.entry_buf.add(entry_pos) = c };
                        entry_pos += 1;
                        spaces = 0;
                    }
                } else if c == delim {
                    if quoted != 0 {
                        unsafe { *p.entry_buf.add(entry_pos) = c };
                        entry_pos += 1;
                    } else {
                        end_field(p, &mut quoted, &mut entry_pos, &mut spaces, cb1, data);
                    }
                } else if is_term.map_or(c == 0x0d || c == 0x0a, |f| f(c)) {
                    if quoted == 0 {
                        end_field(p, &mut quoted, &mut entry_pos, &mut spaces, cb1, data);
                        end_line(p, c, &mut pstate, &mut entry_pos, &mut quoted, &mut spaces, cb2, data);
                    } else {
                        unsafe { *p.entry_buf.add(entry_pos) = c };
                        entry_pos += 1;
                    }
                } else if quoted == 0 && is_space.map_or(c == 0x20 || c == 0x09, |f| f(c)) {
                    unsafe { *p.entry_buf.add(entry_pos) = c };
                    entry_pos += 1;
                    spaces += 1;
                } else {
                    unsafe { *p.entry_buf.add(entry_pos) = c };
                    entry_pos += 1;
                    spaces = 0;
                }
            }
            3 => {
                if c == delim {
                    entry_pos -= spaces + 1;
                    end_field(p, &mut quoted, &mut entry_pos, &mut spaces, cb1, data);
                } else if is_term.map_or(c == 0x0d || c == 0x0a, |f| f(c)) {
                    entry_pos -= spaces + 1;
                    end_field(p, &mut quoted, &mut entry_pos, &mut spaces, cb1, data);
                    end_line(p, c, &mut pstate, &mut entry_pos, &mut quoted, &mut spaces, cb2, data);
                } else if is_space.map_or(c == 0x20 || c == 0x09, |f| f(c)) {
                    unsafe { *p.entry_buf.add(entry_pos) = c };
                    entry_pos += 1;
                    spaces += 1;
                } else if c == quote {
                    if spaces != 0 {
                        if p.options & 1 != 0 {
                            p.status = 1;
                            p.quoted = quoted;
                            p.pstate = pstate;
                            p.spaces = spaces;
                            p.entry_pos = entry_pos;
                            return pos - 1;
                        }
                        spaces = 0;
                        unsafe { *p.entry_buf.add(entry_pos) = c };
                        entry_pos += 1;
                    } else {
                        pstate = 2;
                    }
                } else {
                    if p.options & 1 != 0 {
                        p.status = 1;
                        p.quoted = quoted;
                        p.pstate = pstate;
                        p.spaces = spaces;
                        p.entry_pos = entry_pos;
                        return pos - 1;
                    }
                    pstate = 2;
                    spaces = 0;
                    unsafe { *p.entry_buf.add(entry_pos) = c };
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

fn end_field(
    p: &mut csv_parser,
    quoted: &mut i32,
    entry_pos: &mut usize,
    spaces: &mut usize,
    cb1: Option<unsafe extern "C" fn(*mut libc::c_void, usize, *mut libc::c_void)>,
    data: *mut libc::c_void,
) {
    if *quoted == 0 {
        *entry_pos -= *spaces;
    }
    if p.options & 8 != 0 {
        unsafe { *p.entry_buf.add(*entry_pos) = b'\0' };
    }
    if let Some(cb) = cb1 {
        if p.options & 16 != 0 && *quoted == 0 && *entry_pos == 0 {
            unsafe { cb(std::ptr::null_mut(), *entry_pos, data) };
        } else {
            unsafe { cb(p.entry_buf as *mut libc::c_void, *entry_pos, data) };
        }
    }
    p.pstate = 1;
    *entry_pos = 0;
    *quoted = 0;
    *spaces = 0;
}

fn end_line(
    p: &mut csv_parser,
    c: u8,
    pstate: &mut i32,
    entry_pos: &mut usize,
    quoted: &mut i32,
    spaces: &mut usize,
    cb2: Option<unsafe extern "C" fn(libc::c_int, *mut libc::c_void)>,
    data: *mut libc::c_void,
) {
    if let Some(cb) = cb2 {
        unsafe { cb(c as libc::c_int, data) };
    }
    *pstate = 0;
    *entry_pos = 0;
    *quoted = 0;
    *spaces = 0;
}