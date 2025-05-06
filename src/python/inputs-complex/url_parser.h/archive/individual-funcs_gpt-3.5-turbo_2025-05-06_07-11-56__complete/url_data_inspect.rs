use std::ffi::CString;

#[repr(C)]
struct UrlKeyValue {
    key: *const i8,
    value: *const i8,
}

#[repr(C)]
struct UrlData {
    whole_url: *mut i8,
    protocol: *const i8,
    userinfo: *const i8,
    host: *const i8,
    port: *const i8,
    path: *const i8,
    query: *const UrlKeyValue,
    fragment: *const i8,
}

#[derive(Debug)]
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

impl UrlData {
    fn inspect(&self) {
        println!("#url =>");
        if !self.protocol.is_null() {
            println!("    .protocol: \"{}\"", unsafe { CString::from_raw(self.protocol as *mut i8).to_str().unwrap() });
        } else {
            println!("    .protocol: (NULL)");
        }
        if !self.host.is_null() {
            println!("    .host: \"{}\"", unsafe { CString::from_raw(self.host as *mut i8).to_str().unwrap() });
        } else {
            println!("    .host: (NULL)");
        }
        if !self.userinfo.is_null() {
            println!("    .userinfo: \"{}\"", unsafe { CString::from_raw(self.userinfo as *mut i8).to_str().unwrap() });
        } else {
            println!("    .userinfo: (NULL)");
        }
        if !self.port.is_null() {
            println!("    .port: \"{}\"", unsafe { CString::from_raw(self.port as *mut i8).to_str().unwrap() });
        } else {
            println!("    .port: (NULL)");
        }
        if !self.path.is_null() {
            println!("    .path: \"{}\"", unsafe { CString::from_raw(self.path as *mut i8).to_str().unwrap() });
        } else {
            println!("    .path: (NULL)");
        }
        if !self.query.is_null() {
            let mut nr = 0;
            unsafe {
                while !(*self.query.offset(nr)).key.is_null() {
                    let key = CString::from_raw((*self.query.offset(nr)).key as *mut i8).to_str().unwrap();
                    let value = if !(*self.query.offset(nr)).value.is_null() {
                        CString::from_raw((*self.query.offset(nr)).value as *mut i8).to_str().unwrap()
                    } else {
                        "(NULL)".to_string()
                    };
                    println!("    .query[{}]: \"{}\" -> \"{}\"", nr, key, value);
                    nr += 1;
                }
            }
        }
        if !self.fragment.is_null() {
            println!("    .fragment: \"{}\"", unsafe { CString::from_raw(self.fragment as *mut i8).to_str().unwrap() });
        } else {
            println!("    .fragment: (NULL)");
        }
    }
}

fn main() {
    let data = UrlData {
        whole_url: std::ptr::null_mut(),
        protocol: CString::new("https").unwrap().into_raw(),
        userinfo: std::ptr::null(),
        host: CString::new("example.com").unwrap().into_raw(),
        port: CString::new("8080").unwrap().into_raw(),
        path: CString::new("/path/to/resource").unwrap().into_raw(),
        query: std::ptr::null(),
        fragment: CString::new("section1").unwrap().into_raw(),
    };

    data.inspect();
}
