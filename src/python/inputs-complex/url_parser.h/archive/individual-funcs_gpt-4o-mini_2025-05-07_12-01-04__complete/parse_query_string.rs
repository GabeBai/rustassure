use std::ffi::{CStr, CString};
use std::ptr;
use std::os::raw::c_char;
use std::alloc::{alloc, dealloc, Layout};

#[derive(Debug)]
struct UrlKeyValue {
    key: *const c_char,
    value: *const c_char,
}

const QUERY: u32 = 0x40;

fn decode_percent(input: *const c_char) -> *const c_char {
    // Placeholder for percent-decoding logic
    input
}

fn scan_part(p: *mut c_char, category: u32, delimiter: c_char, terminator: c_char) -> *mut c_char {
    // Placeholder for the scan_part logic
    let mut current = p;
    while unsafe { *current } != terminator && unsafe { *current } != delimiter {
        current = unsafe { current.add(1) };
    }
    if unsafe { *current } == delimiter || unsafe { *current } == terminator {
        current
    } else {
        ptr::null_mut()
    }
}

fn parse_query_string(begin: *mut c_char, end: *mut c_char) -> *mut UrlKeyValue {
    let mut elements = 1;
    let mut p = begin;

    // Count the number of elements
    while p < end {
        if unsafe { *p == b'&' as c_char || *p == b';' as c_char } {
            elements += 1;
        }
        unsafe { p = p.add(1) };
    }

    // Allocate memory for the key-value pairs
    let layout = Layout::array::<UrlKeyValue>(elements as usize + 1).unwrap();
    let kv: *mut UrlKeyValue = unsafe { alloc(layout) as *mut UrlKeyValue };

    if kv.is_null() {
        return ptr::null_mut();
    }

    p = begin;
    for element in 0..=elements {
        let key = p;
        let kv_end = scan_part(p, QUERY, b'&' as c_char, b';' as c_char);
        if kv_end.is_null() {
            eprintln!("ERROR: p=«{}»", unsafe { CStr::from_ptr(p).to_string_lossy() });
            unsafe { dealloc(kv as *mut u8, layout) };
            return ptr::null_mut();
        }
        unsafe { *kv_end = 0 }; // Null-terminate the key

        let key_end = scan_part(p, QUERY, b'=' as c_char, b'\0' as c_char);
        let has_value = unsafe { *key_end == b'=' as c_char };
        unsafe { *key_end = 0 }; // Null-terminate the key

        unsafe {
            (*kv.add(element)).key = decode_percent(key);
            if has_value {
                let value = key_end.add(1);
                (*kv.add(element)).value = decode_percent(value);
            } else {
                (*kv.add(element)).value = key_end;
            }
        }
        p = unsafe { kv_end.add(1) };
    }
    kv
}

fn main() {
    // Example usage
    let query_string = CString::new("key1=value1&key2=value2").unwrap();
    let begin = query_string.as_ptr() as *mut c_char;
    let end = unsafe { begin.add(query_string.to_bytes().len()) };

    let kv_pairs = parse_query_string(begin, end);
    // Process kv_pairs as needed
}
