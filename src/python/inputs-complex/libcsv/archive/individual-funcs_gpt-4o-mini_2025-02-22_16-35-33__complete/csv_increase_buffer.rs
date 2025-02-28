use std::ptr;

struct CsvParser {
    pstate: i32,
    quoted: i32,
    spaces: usize,
    entry_buf: *mut u8,
    entry_pos: usize,
    entry_size: usize,
    status: i32,
    options: u8,
    quote_char: u8,
    delim_char: u8,
    is_space: Option<fn(u8) -> i32>,
    is_term: Option<fn(u8) -> i32>,
    blk_size: usize,
    malloc_func: Option<fn(usize) -> *mut std::ffi::c_void>,
    realloc_func: Option<fn(*mut std::ffi::c_void, usize) -> *mut std::ffi::c_void>,
    free_func: Option<fn(*mut std::ffi::c_void)>,
}

impl CsvParser {
    fn csv_increase_buffer(&mut self) -> i32 {
        if self.entry_buf.is_null() {
            return 0;
        }
        if self.realloc_func.is_none() {
            return 0;
        }
        
        let mut to_add = self.blk_size;
        let mut vp: *mut std::ffi::c_void;

        if self.entry_size >= usize::MAX - to_add {
            to_add = usize::MAX - self.entry_size;
        }
        if to_add == 0 {
            self.status = 3;
            return -1;
        }

        while {
            let realloc = self.realloc_func.unwrap();
            vp = realloc(self.entry_buf as *mut std::ffi::c_void, self.entry_size + to_add);
            vp.is_null()
        } {
            to_add /= 2;
            if to_add == 0 {
                self.status = 2;
                return -1;
            }
        }

        self.entry_buf = vp as *mut u8;
        self.entry_size += to_add;
        0
    }
}
