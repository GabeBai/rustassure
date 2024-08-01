use std::os::raw::{c_char, c_int, c_uchar};

#[repr(C)]
pub struct csv_parser {
    pstate: c_int,
    quoted: c_int,
    spaces: usize,
    entry_buf: *mut c_uchar,
    entry_pos: usize,
    entry_size: usize,
    status: c_int,
    options: u8,
    quote_char: u8,
    delim_char: u8,
    is_space: Option<extern "C" fn(c_uchar) -> c_int>,
    is_term: Option<extern "C" fn(c_uchar) -> c_int>,
    blk_size: usize,
    malloc_func: Option<extern "C" fn(usize) -> *mut c_char>,
    realloc_func: Option<extern "C" fn(*mut c_char, usize) -> *mut c_char>,
    free_func: Option<extern "C" fn(*mut c_char)>,
}

extern "C" {
    static stdin: *mut std::os::raw::c_void;
    static stdout: *mut std::os::raw::c_void;
    static stderr: *mut std::os::raw::c_void;
    static sys_nerr: c_int;
    static sys_errlist: *const *const c_char;
}

pub enum __codecvt_result {
    __codecvt_ok,
    __codecvt_partial,
    __codecvt_error,
    __codecvt_noconv,
}

static CSV_ERRORS: [&str; 5] = [
    "success",
    "error parsing data while strict checking enabled",
    "memory exhausted while increasing buffer size",
    "data size too large",
    "invalid status code",
];

impl csv_parser {
    pub fn set_free_func(&mut self, f: Option<extern "C" fn(*mut c_char)>) {
        if let Some(func) = f {
            self.free_func = Some(func);
        }
    }
}
