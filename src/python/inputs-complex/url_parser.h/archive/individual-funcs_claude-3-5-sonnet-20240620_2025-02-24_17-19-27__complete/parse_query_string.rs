use std::ffi::c_void;
use std::os::raw::{c_char, c_int};
use std::ptr::null_mut;

#[repr(C)]
struct UrlKeyValue {
    key: *const c_char,
    value: *const c_char,
}

#[no_mangle]
unsafe fn parse_query_string(begin: *mut c_char, end: *mut c_char) -> *mut UrlKeyValue {
    let mut elements = 1;
    let mut p = begin;
    while p != end {
        if *p == b'&' as c_char || *p == b';' as c_char {
            elements += 1;
        }
        p = p.add(1);
    }

    let kv = libc::calloc(elements + 1, std::mem::size_of::<UrlKeyValue>()) as *mut UrlKeyValue;
    if kv.is_null() {
        return null_mut();
    }

    let mut p = begin;
    let mut element = 0;
    while element <= elements && p < end {
        let key = p;
        let kv_end = scan_part(p, Category::Query as c_int, b'&' as c_char, b';' as c_char);
        if kv_end.is_null() {
            eprintln!("ERROR url.c Line 153! p=«{}»", std::ffi::CStr::from_ptr(p).to_string_lossy());
            goto!(error);
        }
        *kv_end = b'\0' as c_char;
        let key_end = scan_part(p, Category::Query as c_int, b'=' as c_char, b'\0' as c_char);
        let has_value = *key_end == b'=' as c_char;
        *key_end = b'\0' as c_char;
        (*kv.add(element)).key = decode_percent(key);
        if has_value {
            let value = key_end.add(1);
            (*kv.add(element)).value = decode_percent(value);
        } else {
            (*kv.add(element)).value = key_end;
        }
        p = kv_end.add(1);
        element += 1;
    }

    return kv;

    error: {
        libc::free(kv as *mut c_void);
        return null_mut();
    }
}