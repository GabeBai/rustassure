use std::ffi::CString;

struct url_key_value {
    key: *const i8,
    value: *const i8,
}

struct url_data {
    whole_url: *mut i8,
    protocol: *const i8,
    userinfo: *const i8,
    host: *const i8,
    port: *const i8,
    path: *const i8,
    query: *const url_key_value,
    fragment: *const i8,
}

enum Category {
    Scheme = 0x01,
    Unreserved = 0x02,
    GenDelim = 0x04,
    SubDelim = 0x08,
    PCharSlash = 0x10,
    HexDigit = 0x20,
    Query = 0x40,
    Fragment = 0x80,
    Userinfo = 0x100,
    IPv6Char = 0x200,
}

extern {
    fn printf(format: *const i8, ...) -> i32;
}

fn url_data_inspect(data: &url_data) {
    unsafe {
        printf(CString::new("#url =>\n").unwrap().as_ptr());
        if !data.protocol.is_null() {
            printf(CString::new("    .protocol: \"%s\"\n").unwrap().as_ptr(), data.protocol);
        } else {
            printf(CString::new("    .protocol: (NULL)\n").unwrap().as_ptr());
        }

        if !data.host.is_null() {
            printf(CString::new("    .host: \"%s\"\n").unwrap().as_ptr(), data.host);
        } else {
            printf(CString::new("    .host: (NULL)\n").unwrap().as_ptr());
        }

        if !data.userinfo.is_null() {
            printf(CString::new("    .userinfo: \"%s\"\n").unwrap().as_ptr(), data.userinfo);
        } else {
            printf(CString::new("    .userinfo: (NULL)\n").unwrap().as_ptr());
        }

        if !data.host.is_null() {
            printf(CString::new("    .host: \"%s\"\n").unwrap().as_ptr(), data.host);
        } else {
            printf(CString::new("    .host: (NULL)\n").unwrap().as_ptr());
        }

        if !data.port.is_null() {
            printf(CString::new("    .port: \"%s\"\n").unwrap().as_ptr(), data.port);
        } else {
            printf(CString::new("    .port: (NULL)\n").unwrap().as_ptr());
        }

        if !data.path.is_null() {
            printf(CString::new("    .path: \"%s\"\n").unwrap().as_ptr(), data.path);
        } else {
            printf(CString::new("    .path: (NULL)\n").unwrap().as_ptr());
        }

        if !data.query.is_null() {
            let mut nr = 0;
            while !(*data.query.offset(nr)).key.is_null() {
                printf(CString::new("    .query[%u]: \"%s\" -> ").unwrap().as_ptr(), nr, (*data.query.offset(nr)).key);
                if !(*data.query.offset(nr)).value.is_null() {
                    printf(CString::new("\"%s\"\n").unwrap().as_ptr(), (*data.query.offset(nr)).value);
                } else {
                    printf(CString::new("(NULL)\n").unwrap().as_ptr());
                }
                nr += 1;
            }
        }

        if !data.fragment.is_null() {
            printf(CString::new("    .fragment: \"%s\"\n").unwrap().as_ptr(), data.fragment);
        } else {
            printf(CString::new("    .fragment: (NULL)\n").unwrap().as_ptr());
        }
    }
}
