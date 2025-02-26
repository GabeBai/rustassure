use std::ffi::CStr;
use std::ptr;
use std::mem;
use std::slice;
use std::str;
use libc::{c_char, c_int, size_t, FILE};

#[repr(C)]
pub struct url_key_value {
    key: *const c_char,
    value: *const c_char,
}

#[repr(C)]
pub struct url_data {
    whole_url: *mut c_char,
    protocol: *const c_char,
    userinfo: *const c_char,
    host: *const c_char,
    port: *const c_char,
    path: *const c_char,
    query: *const url_key_value,
    fragment: *const c_char,
}

extern "C" {
    fn strdup(s: *const c_char) -> *mut c_char;
    fn strlen(s: *const c_char) -> size_t;
    fn fprintf(stream: *mut FILE, format: *const c_char, ...) -> c_int;
    static __stderrp: *mut FILE;
    fn url_is_ssh(str: *const c_char) -> bool;
    fn scan_part(p: *const c_char, category: c_int, delim1: c_char, delim2: c_char) -> *mut c_char;
    fn scan_decimal_number(p: *const c_char) -> *mut c_char;
    fn decode_percent(s: *const c_char) -> *const c_char;
    fn parse_query_string(start: *const c_char, end: *const c_char) -> *const url_key_value;
    fn url_free(data: *mut url_data);
}

#[no_mangle]
pub unsafe extern "C" fn url_parse(url: *const c_char) -> *mut url_data {
    let mut data = libc::calloc(1, mem::size_of::<url_data>() as size_t) as *mut url_data;
    if data.is_null() {
        return ptr::null_mut();
    }

    let p = strdup(url);
    if p.is_null() {
        fprintf(__stderrp, b"ERROR %s Line %u! p=\xC2\xAB%s\xC2\xBB\n\0".as_ptr() as *const c_char, b"url.c\0".as_ptr() as *const c_char, 190, p);
        goto!(error);
    }
    (*data).whole_url = p;

    let p_end = p.add(strlen(p));
    let mut protocol_end = scan_part(p, 1, b':' as c_char, b'\0' as c_char);
    if protocol_end.is_null() || *protocol_end == b'\0' as c_char {
        fprintf(__stderrp, b"ERROR %s Line %u! p=\xC2\xAB%s\xC2\xBB\n\0".as_ptr() as *const c_char, b"url.c\0".as_ptr() as *const c_char, 197, p);
        goto!(error);
    }
    *protocol_end = b'\0' as c_char;
    (*data).protocol = p;

    let is_ssh = url_is_ssh((*data).protocol);
    let mut p = protocol_end.add(1);

    if p >= p_end || *p != b'/' as c_char {
        fprintf(__stderrp, b"ERROR %s Line %u! p=\xC2\xAB%s\xC2\xBB\n\0".as_ptr() as *const c_char, b"url.c\0".as_ptr() as *const c_char, 205, p);
        goto!(error);
    }
    p = p.add(1);

    if p >= p_end || *p != b'/' as c_char {
        fprintf(__stderrp, b"ERROR %s Line %u! p=\xC2\xAB%s\xC2\xBB\n\0".as_ptr() as *const c_char, b"url.c\0".as_ptr() as *const c_char, 209, p);
        goto!(error);
    }
    let second_slash = p;
    p = p.add(1);

    if p >= p_end {
        fprintf(__stderrp, b"ERROR %s Line %u! p=\xC2\xAB%s\xC2\xBB\n\0".as_ptr() as *const c_char, b"url.c\0".as_ptr() as *const c_char, 215, p);
        goto!(error);
    }

    let mut userinfo_end = scan_part(p, 0x80, b'@' as c_char, b'\0' as c_char);
    if !userinfo_end.is_null() && *userinfo_end == b'@' as c_char {
        *userinfo_end = b'\0' as c_char;
        (*data).userinfo = p;
        p = userinfo_end.add(1);
    }

    if p >= p_end {
        fprintf(__stderrp, b"ERROR %s Line %u! p=\xC2\xAB%s\xC2\xBB\n\0".as_ptr() as *const c_char, b"url.c\0".as_ptr() as *const c_char, 225, p);
        goto!(error);
    }

    let mut hostname_end = ptr::null_mut();
    if *p == b'[' as c_char {
        p = p.add(1);
        hostname_end = scan_part(p, 0x100, b']' as c_char, b'\0' as c_char);
        if hostname_end.is_null() {
            fprintf(__stderrp, b"ERROR %s Line %u! p=\xC2\xAB%s\xC2\xBB\n\0".as_ptr() as *const c_char, b"url.c\0".as_ptr() as *const c_char, 234, p);
            goto!(error);
        }
        *hostname_end = b'\0' as c_char;
        (*data).host = p;
        hostname_end = hostname_end.add(1);
        if hostname_end < p_end && !is_ssh && *hostname_end == b':' as c_char {
            let port_end = scan_decimal_number(hostname_end.add(1));
            if !port_end.is_null() {
                (*data).port = hostname_end.add(1);
                p = port_end;
            } else {
                fprintf(__stderrp, b"ERROR %s Line %u! p=\xC2\xAB%s\xC2\xBB\n\0".as_ptr() as *const c_char, b"url.c\0".as_ptr() as *const c_char, 247, p);
                goto!(error);
            }
        } else {
            p = hostname_end;
        }
    } else {
        hostname_end = scan_part(p, 0x0A, b':' as c_char, b'/' as c_char);
        if hostname_end.is_null() {
            fprintf(__stderrp, b"ERROR %s Line %u! p=\xC2\xAB%s\xC2\xBB\n\0".as_ptr() as *const c_char, b"url.c\0".as_ptr() as *const c_char, 255, p);
            goto!(error);
        }
        (*data).host = p;
        if !is_ssh && *hostname_end == b':' as c_char {
            *hostname_end = b'\0' as c_char;
            let port_end = scan_decimal_number(hostname_end.add(1));
            if !port_end.is_null() {
                (*data).port = hostname_end.add(1);
                p = port_end;
            } else {
                fprintf(__stderrp, b"ERROR %s Line %u! p=\xC2\xAB%s\xC2\xBB\n\0".as_ptr() as *const c_char, b"url.c\0".as_ptr() as *const c_char, 267, p);
                goto!(error);
            }
        } else {
            p = hostname_end;
        }
    }

    libc::memmove(second_slash, second_slash.add(1), (p as usize - second_slash as usize) as size_t);
    if !(*data).userinfo.is_null() {
        (*data).userinfo = (*data).userinfo.sub(1);
    }
    (*data).host = (*data).host.sub(1);
    if !(*data).port.is_null() {
        (*data).port = (*data).port.sub(1);
    }
    *p.sub(1) = b'\0' as c_char;

    if is_ssh && *p == b':' as c_char {
        p = p.add(1);
    }

    let path_end = scan_part(p, 0x10, b'?' as c_char, b'#' as c_char);
    if path_end.is_null() {
        fprintf(__stderrp, b"ERROR %s Line %u! p=\xC2\xAB%s\xC2\xBB\n\0".as_ptr() as *const c_char, b"url.c\0".as_ptr() as *const c_char, 295, p);
        goto!(error);
    }

    let has_query = *path_end == b'?' as c_char;
    let has_fragment = *path_end == b'#' as c_char;
    *path_end = b'\0' as c_char;
    (*data).path = decode_percent(p);
    p = path_end.add(1);

    if has_query {
        let query_end = scan_part(p, 0x40, b'#' as c_char, b'\0' as c_char);
        if !query_end.is_null() {
            let has_fragment = *query_end == b'#' as c_char;
            *query_end = b'\0' as c_char;
            (*data).query = parse_query_string(p, query_end);
            if has_fragment {
                let fragment_end = scan_part(query_end.add(1), 0x40, b'\0' as c_char, b'\0' as c_char);
                if !fragment_end.is_null() {
                    (*data).fragment = decode_percent(query_end.add(1));
                } else {
                    fprintf(__stderrp, b"ERROR %s Line %u! p=\xC2\xAB%s\xC2\xBB\n\0".as_ptr() as *const c_char, b"url.c\0".as_ptr() as *const c_char, 319, p);
                    goto!(error);
                }
            }
        } else {
            fprintf(__stderrp, b"ERROR %s Line %u! p=\xC2\xAB%s\xC2\xBB\n\0".as_ptr() as *const c_char, b"url.c\0".as_ptr() as *const c_char, 323, p);
            goto!(error);
        }
    } else if has_fragment {
        let fragment_end = scan_part(p, 0x40, b'\0' as c_char, b'\0' as c_char);
        if !fragment_end.is_null() {
            (*data).fragment = decode_percent(p);
        } else {
            fprintf(__stderrp, b"ERROR %s Line %u! p=\xC2\xAB%s\xC2\xBB\n\0".as_ptr() as *const c_char, b"url.c\0".as_ptr() as *const c_char, 332, p);
            goto!(error);
        }
    }

    return data;

    error: {
        url_free(data);
        return ptr::null_mut();
    }
}