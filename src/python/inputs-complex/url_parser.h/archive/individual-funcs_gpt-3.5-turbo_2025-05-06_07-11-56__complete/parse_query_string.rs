use std::ffi::CString;
use std::os::raw::c_char;

#[repr(C)]
struct UrlKeyValue {
    key: *const c_char,
    value: *const c_char,
}

enum Category {
    Scheme = 0x01,
    Unreserved = 0x02,
    GenDelim = 0x04,
    SubDelim = 0x08,
    PCharSlash = 0x10,
    HexDigit = 0x20,
    Query = 0x40,
    Fragment = 0x40,
    Userinfo = 0x80,
    IPv6Char = 0x100,
}

fn parse_query_string(begin: *mut c_char, end: *mut c_char) -> *mut UrlKeyValue {
    let mut elements = 1;
    let mut p = begin;
    while p != end {
        if *p == '&' as c_char || *p == ';' as c_char {
            elements += 1;
        }
        p = p.offset(1);
    }

    let mut kv = unsafe { libc::calloc((elements + 1) as usize, std::mem::size_of::<UrlKeyValue>()) as *mut UrlKeyValue };
    if kv.is_null() {
        return std::ptr::null_mut();
    }

    let mut p = begin;
    let mut element = 0;
    while element <= elements && p < end {
        let key = p;
        let kv_end = scan_part(p, Category::Query, '&' as c_char, ';' as c_char);
        if kv_end.is_null() {
            unsafe {
                libc::fprintf(libc::stderr, b"ERROR %s Line %u! p=«%s»\n\0".as_ptr(), b"url.c\0".as_ptr(), 153, p);
                goto_error(kv);
            }
        }
        unsafe {
            *kv_end = '\0' as c_char;
        }
        let key_end = scan_part(p, Category::Query, '=' as c_char, '\0' as c_char);
        let has_value = *key_end == '=' as c_char;
        unsafe {
            *key_end = '\0' as c_char;
        }
        let decoded_key = decode_percent(key);
        unsafe {
            (*kv.add(element)).key = decoded_key.as_ptr();
        }
        if has_value {
            let value = key_end.offset(1);
            let decoded_value = decode_percent(value);
            unsafe {
                (*kv.add(element)).value = decoded_value.as_ptr();
            }
        } else {
            unsafe {
                (*kv.add(element)).value = key_end;
            }
        }
        p = kv_end.offset(1);
        element += 1;
    }

    return kv;

    unsafe fn goto_error(kv: *mut UrlKeyValue) -> *mut UrlKeyValue {
        libc::free(kv as *mut std::ffi::c_void);
        std::ptr::null_mut()
    }
}

fn scan_part(p: *mut c_char, category: Category, delimiter1: c_char, delimiter2: c_char) -> *mut c_char {
    // Implement the scan_part function logic here
    unimplemented!()
}

fn decode_percent(input: *mut c_char) -> CString {
    // Implement the decode_percent function logic here
    unimplemented!()
}
