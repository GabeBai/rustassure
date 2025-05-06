use std::io::{self, Write};

extern "C" {
    fn u8next_(txt: *const i8, ch: *mut i32) -> i32;
    fn u8encode_(ch: i32, s: *mut i8) -> i32;
    fn __errno_location() -> *mut i32;
}

fn main() {
    let s = ["Aa", "èa", "会員", "𧀀𧀍"];
    for s1 in &s {
        let mut c = 0;
        let l = unsafe { u8next_(s1.as_ptr() as *const i8, &mut c) };
        
        let mut buf = [0; 8];
        let l2 = unsafe { u8encode_(c, buf.as_mut_ptr() as *mut i8) };
        
        assert_eq!(l, s1.len() as i32);
        assert_eq!(l, l2);
        assert_eq!(s1.as_bytes(), &buf[0..l as usize]);
        assert_eq!(buf[l as usize], 0, "Encoding not 0 terminated!");
        
        let e = if l == s1.len() as i32 { "PASS" } else { "FAIL" };
        let err_msg = format!("Expected length: {}, got {}", s1.len(), l);
        print_result(e, &err_msg, file!(), line!());
        
        let e = if l == l2 { "PASS" } else { "FAIL" };
        let err_msg = format!("Length should be {}, got {}", l, l2);
        print_result(e, &err_msg, file!(), line!());
        
        let e = if s1.as_bytes() == &buf[0..l as usize] { "PASS" } else { "FAIL" };
        let err_msg = "Encoding error";
        print_result(e, err_msg, file!(), line!());
    }
}

fn print_result(result: &str, message: &str, file: &str, line: u32) {
    let errno = unsafe { *__errno_location() };
    if errno != 0 {
        eprintln!("{}: ({}) \t{}:{}\n", result, message, file, line);
        eprintln!("    : len={} [S {:02X} {:02X} {:02X} {:02X}] [E {:02X} {:02X} {:02X} {:02X}]\t{}:{}\n", 
            buf.len(), s1[0], s1[1], s1[2], s1[3], buf[0], buf[1], buf[2], buf[3], file, line);
        eprintln!("    : Encoding not 0 terminated!\n");
    }
}
