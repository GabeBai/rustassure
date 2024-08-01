use std::ptr;

#[repr(C)]
pub struct csv_parser {
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
    malloc_func: Option<fn(usize) -> *mut u8>,
    realloc_func: Option<fn(*mut u8, usize) -> *mut u8>,
    free_func: Option<fn(*mut u8)>,
}

impl csv_parser {
    pub fn csv_get_delim(&self) -> u8 {
        assert!(!self.entry_buf.is_null(), "received null csv_parser");
        self.delim_char
    }
}

static CSV_ERRORS: [&str; 5] = [
    "success",
    "error parsing data while strict checking enabled",
    "memory exhausted while increasing buffer size",
    "data size too large",
    "invalid status code",
];

fn main() {
    let mut parser = csv_parser {
        pstate: 0,
        quoted: 0,
        spaces: 0,
        entry_buf: ptr::null_mut(),
        entry_pos: 0,
        entry_size: 0,
        status: 0,
        options: 0,
        quote_char: b'"',
        delim_char: b',',
        is_space: None,
        is_term: None,
        blk_size: 0,
        malloc_func: None,
        realloc_func: None,
        free_func: None,
    };

    let delim = parser.csv_get_delim();
    println!("Delimiter: {}", delim);

    for error in &CSV_ERRORS {
        println!("{}", error);
    }
}
