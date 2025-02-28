#![allow(unaligned_references)]
use std::ffi::CStr;
use std::os::raw::c_char;

#[repr(C)]
pub struct UrlKeyValue {
    pub key: *const c_char,
    pub value: *const c_char,
}

#[repr(C)]
pub struct UrlData {
    pub whole_url: *mut c_char,
    pub protocol: *const c_char,
    pub userinfo: *const c_char,
    pub host: *const c_char,
    pub port: *const c_char,
    pub path: *const c_char,
    pub query: *const UrlKeyValue,
    pub fragment: *const c_char,
}

impl UrlData {
#[no_mangle]
#[no_mangle]
    pub fn url_data_inspect(&self) {
        println!("#url =>");
        self.print_field("protocol", self.protocol);
        self.print_field("host", self.host);
        self.print_field("userinfo", self.userinfo);
        self.print_field("port", self.port);
        self.print_field("path", self.path);
        self.print_query();
        self.print_field("fragment", self.fragment);
    }

#[no_mangle]
#[no_mangle]
    fn print_field(&self, name: &str, field: *const c_char) {
        unsafe {
            if !field.is_null() {
                let c_str = CStr::from_ptr(field);
                println!("    .{}: \"{}\"", name, c_str.to_string_lossy());
            } else {
                println!("    .{}: (NULL)", name);
            }
        }
    }

#[no_mangle]
#[no_mangle]
    fn print_query(&self) {
        unsafe {
            if !self.query.is_null() {
                let mut nr = 0;
                let mut query_ptr = self.query;
                while !(*query_ptr).key.is_null() {
                    let key_c_str = CStr::from_ptr((*query_ptr).key);
                    print!("    .query[{}]: \"{}\" -> ", nr, key_c_str.to_string_lossy());
                    if !(*query_ptr).value.is_null() {
                        let value_c_str = CStr::from_ptr((*query_ptr).value);
                        println!("\"{}\"", value_c_str.to_string_lossy());
                    } else {
                        println!("(NULL)");
                    }
                    nr += 1;
                    query_ptr = query_ptr.add(1);
                }
            }
        }
    }
}

#[no_mangle]
#[no_mangle]
fn main() {
    // Example usage
    // You would typically get these from some C FFI or other source
    let url_data = UrlData {
        whole_url: std::ptr::null_mut(),
        protocol: std::ptr::null(),
        userinfo: std::ptr::null(),
        host: std::ptr::null(),
        port: std::ptr::null(),
        path: std::ptr::null(),
        query: std::ptr::null(),
        fragment: std::ptr::null(),
    };

    url_data.inspect();
}
