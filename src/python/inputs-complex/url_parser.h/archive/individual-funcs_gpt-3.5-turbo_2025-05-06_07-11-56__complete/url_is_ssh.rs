#[repr(C)]
pub struct url_key_value {
    key: *const i8,
    value: *const i8,
}

#[derive(Debug, PartialEq)]
pub enum Category {
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

#[link(name = "c")]
extern "C" {
    fn strcmp(s1: *const i8, s2: *const i8) -> i32;
}

fn url_is_ssh(str: *const i8) -> bool {
    unsafe {
        if strcmp(str, b"ssh\0".as_ptr() as *const i8) == 0 || strcmp(str, b"git\0".as_ptr() as *const i8) == 0 {
            return true;
        }
    }
    false
}

fn main() {
    let test_str = "ssh".as_bytes();
    let result = url_is_ssh(test_str.as_ptr() as *const i8);
    println!("{}", result);
}
