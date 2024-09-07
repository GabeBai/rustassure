use std::collections::HashMap;
use std::ffi::CString;
use std::os::raw::{c_char, c_int};
use std::ptr;

#[repr(C)]
struct LocaleData;

#[repr(C)]
struct LocaleStruct {
    locales: [LocaleData; 13],
    ctype_b: *const u16,
    ctype_tolower: *const i32,
    ctype_toupper: *const i32,
    names: [*const c_char; 13],
}

type LocaleT = *mut LocaleStruct;

extern "C" {
    fn memset(s: *mut libc::c_void, c: c_int, n: libc::size_t) -> *mut libc::c_void;
    fn strdup(s: *const c_char) -> *mut c_char;
    fn strlen(s: *const c_char) -> libc::size_t;
}

#[repr(C)]
struct IOFile {
    flags: c_int,
    read_ptr: *mut c_char,
    read_end: *mut c_char,
    read_base: *mut c_char,
    write_base: *mut c_char,
    write_ptr: *mut c_char,
    write_end: *mut c_char,
    buf_base: *mut c_char,
    buf_end: *mut c_char,
    save_base: *mut c_char,
    backup_base: *mut c_char,
    save_end: *mut c_char,
    markers: *mut c_void,
    chain: *mut IOFile,
    fileno: c_int,
    flags2: c_int,
    old_offset: libc::off_t,
    cur_column: u16,
    vtable_offset: i8,
    shortbuf: [c_char; 1],
    lock: *mut c_void,
    offset: libc::off64_t,
    codecvt: *mut c_void,
    wide_data: *mut c_void,
    freeres_list: *mut IOFile,
    freeres_buf: *mut c_void,
    pad5: libc::size_t,
    mode: c_int,
    unused2: [u8; 15 * 4 - 4 * 8 - 8],
}

extern "C" {
    static mut stdin: *mut IOFile;
    static mut stdout: *mut IOFile;
    static mut stderr: *mut IOFile;
    fn printf(format: *const c_char, ...) -> c_int;
}

struct CacheEntry {
    key: CString,
    value: CString,
}

impl CacheEntry {
    fn new(key: &str, value: &str) -> Self {
        CacheEntry {
            key: CString::new(key).unwrap(),
            value: CString::new(value).unwrap(),
        }
    }
}

struct Cache {
    entries: HashMap<CString, CacheEntry>,
}

impl Cache {
    fn new() -> Self {
        Cache {
            entries: HashMap::new(),
        }
    }

    fn add_to_cache(&mut self, key: &str, value: &str) {
        let entry = CacheEntry::new(key, value);
        self.entries.insert(entry.key.clone(), entry);
    }
}

static mut CACHE: Option<Cache> = None;

fn add_to_cache(key: &str, value: &str) {
    unsafe {
        if CACHE.is_none() {
            CACHE = Some(Cache::new());
        }

        CACHE.as_mut().unwrap().add_to_cache(key, value);
    }
}
