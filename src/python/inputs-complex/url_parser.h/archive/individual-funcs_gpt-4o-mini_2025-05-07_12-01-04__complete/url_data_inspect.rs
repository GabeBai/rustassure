use std::ffi::CStr;
use std::os::raw::c_char;

#[repr(C)]
pub struct UrlKeyValue {
    key: *const c_char,
    value: *const c_char,
}

#[repr(C)]
pub struct UrlData {
    whole_url: *mut c_char,
    protocol: *const c_char,
    userinfo: *const c_char,
    host: *const c_char,
    port: *const c_char,
    path: *const c_char,
    query: *const UrlKeyValue,
    fragment: *const c_char,
}

pub fn url_data_inspect(data: &UrlData) {
    println!("#url =>");
    
    if !data.protocol.is_null() {
        println!("    .protocol: \"{}\"", unsafe { CStr::from_ptr(data.protocol).to_string_lossy() });
    } else {
        println!("    .protocol: (NULL)");
    }

    if !data.host.is_null() {
        println!("    .host: \"{}\"", unsafe { CStr::from_ptr(data.host).to_string_lossy() });
    } else {
        println!("    .host: (NULL)");
    }

    if !data.userinfo.is_null() {
        println!("    .userinfo: \"{}\"", unsafe { CStr::from_ptr(data.userinfo).to_string_lossy() });
    } else {
        println!("    .userinfo: (NULL)");
    }

    if !data.port.is_null() {
        println!("    .port: \"{}\"", unsafe { CStr::from_ptr(data.port).to_string_lossy() });
    } else {
        println!("    .port: (NULL)");
    }

    if !data.path.is_null() {
        println!("    .path: \"{}\"", unsafe { CStr::from_ptr(data.path).to_string_lossy() });
    } else {
        println!("    .path: (NULL)");
    }

    if !data.query.is_null() {
        let mut nr = 0;
        unsafe {
            while (*data.query.add(nr)).key != std::ptr::null() {
                let key = CStr::from_ptr((*data.query.add(nr)).key).to_string_lossy();
                let value = (*data.query.add(nr)).value;
                print!("    .query[{}]: \"{}\" -> ", nr, key);
                if !value.is_null() {
                    println!("\"{}\"", CStr::from_ptr(value).to_string_lossy());
                } else {
                    println!("(NULL)");
                }
                nr += 1;
            }
        }
    }

    if !data.fragment.is_null() {
        println!("    .fragment: \"{}\"", unsafe { CStr::from_ptr(data.fragment).to_string_lossy() });
    } else {
        println!("    .fragment: (NULL)");
    }
}
