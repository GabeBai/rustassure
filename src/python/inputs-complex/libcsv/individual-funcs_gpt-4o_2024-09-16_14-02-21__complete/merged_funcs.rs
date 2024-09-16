use std::ffi::c_void;
use std::ptr;

struct CsvParser<'a> {
    pstate: i32,
    quoted: i32,
    spaces: usize,
    entry_buf: Option<&'a mut Vec<u8>>,
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

impl<'a> CsvParser<'a> {
    fn new(
        is_space: fn(u8) -> i32,
        is_term: fn(u8) -> i32,
        malloc_func: fn(usize) -> *mut c_void,
        realloc_func: fn(*mut c_void, usize) -> *mut c_void,
        free_func: fn(*mut c_void),
    ) -> Self {
        CsvParser {
            pstate: 0,
            quoted: 0,
            spaces: 0,
            entry_buf: None,
            entry_pos: 0,
            entry_size: 0,
            status: 0,
            options: 0,
            quote_char: b'"',
            delim_char: b',',
            is_space,
            is_term,
            blk_size: 128,
            malloc_func,
            realloc_func,
            free_func,
        }
    }

    fn csv_increase_buffer(&mut self) -> i32 {
        if self.realloc_func as *const () == ptr::null() {
            return 0;
        }

        let to_add = self.blk_size;
        let mut new_size = self.entry_size + to_add;
        let new_buf = (self.realloc_func)(self.entry_buf.as_mut().map_or(ptr::null_mut(), |buf| buf.as_mut_ptr() as *mut c_void), new_size);

        if new_buf.is_null() {
            self.status = 2;
            return -1;
        }

        unsafe {
            let new_vec = Vec::from_raw_parts(new_buf as *mut u8, self.entry_pos, new_size);
            self.entry_buf = Some(&mut *(Box::into_raw(Box::new(new_vec))));
        }

        self.entry_size = new_size;
        0
    }
}
