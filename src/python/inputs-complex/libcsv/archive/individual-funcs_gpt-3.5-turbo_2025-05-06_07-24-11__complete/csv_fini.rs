use std::os::raw::{c_int, c_void, c_uchar};

struct CsvParser {
    pstate: c_int,
    quoted: c_int,
    spaces: usize,
    entry_buf: *mut c_uchar,
    entry_pos: usize,
    entry_size: usize,
    status: c_int,
    options: u8,
    quote_char: c_uchar,
    delim_char: c_uchar,
    is_space: Option<fn(c_uchar) -> c_int>,
    is_term: Option<fn(c_uchar) -> c_int>,
    blk_size: usize,
    malloc_func: Option<fn(usize) -> *mut c_void>,
    realloc_func: Option<fn(*mut c_void, usize) -> *mut c_void>,
    free_func: Option<fn(*mut c_void)>,
}

impl CsvParser {
    fn csv_fini(&mut self, cb1: Option<fn(*mut c_void, usize, *mut c_void)>, cb2: Option<fn(c_int, *mut c_void)>, data: *mut c_void) -> c_int {
        if self.pstate == 0 {
            return -1;
        }

        let quoted = self.quoted;
        let pstate = self.pstate;
        let spaces = self.spaces;
        let entry_pos = self.entry_pos;

        if pstate == 2 && self.quoted != 0 && (self.options & 1) != 0 && (self.options & 4) != 0 {
            self.status = 1;
            return -1;
        }

        match pstate {
            3 => {
                self.entry_pos -= self.spaces + 1;
                // entry_pos = self.entry_pos; // No need to reassign here
            }
            1 | 2 => {
                if !quoted != 0 {
                    self.entry_pos -= spaces;
                }
                if (self.options & 8) != 0 {
                    unsafe {
                        *self.entry_buf.add(entry_pos) = 0;
                    }
                }
                if let Some(cb) = cb1 {
                    if (self.options & 16) != 0 && !quoted && entry_pos == 0 {
                        cb(std::ptr::null_mut(), entry_pos, data);
                    } else {
                        cb(self.entry_buf, entry_pos, data);
                    }
                }
                self.pstate = 1;
                self.entry_pos = 0;
                self.quoted = 0;
                self.spaces = 0;
            }
            0 => {}
            _ => {}
        }

        self.spaces = 0;
        self.quoted = 0;
        self.entry_pos = 0;
        self.status = 0;
        self.pstate = 0;

        0
    }
}
