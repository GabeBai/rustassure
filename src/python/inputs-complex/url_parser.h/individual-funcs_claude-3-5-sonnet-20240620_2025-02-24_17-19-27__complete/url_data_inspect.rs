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

#[no_mangle]
pub extern "C" fn url_data_inspect(data: *const UrlData) {
    let data = unsafe { &*data };

    println!("#url =>");
    
    macro_rules! print_field {
        ($field:expr) => {
            if !data.$field.is_null() {
                println!("    .{}: \"{}\"", stringify!($field), unsafe { CStr::from_ptr(data.$field).to_string_lossy() });
            } else {
                println!("    .{}: (NULL)", stringify!($field));
            }
        };
    }

    print_field!(protocol);
    print_field!(host);
    print_field!(userinfo);
    print_field!(host);
    print_field!(port);
    print_field!(path);

    if !data.query.is_null() {
        let mut nr = 0;
        loop {
            let query = unsafe { &*data.query.offset(nr) };
            if query.key.is_null() {
                break;
            }
            print!("    .query[{}]: \"{}\" -> ", nr, unsafe { CStr::from_ptr(query.key).to_string_lossy() });
            if !query.value.is_null() {
                println!("\"{}\"", unsafe { CStr::from_ptr(query.value).to_string_lossy() });
            } else {
                println!("(NULL)");
            }
            nr += 1;
        }
    }

    print_field!(fragment);
}