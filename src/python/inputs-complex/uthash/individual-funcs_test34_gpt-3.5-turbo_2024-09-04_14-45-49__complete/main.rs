use std::ffi::CString;
use std::fs::File;
use std::io::{BufRead, BufReader};
use std::ptr;

#[repr(C)]
struct El {
    bname: [u8; 20],
    next: *mut El,
    prev: *mut El,
}

fn main() {
    let mut name: *mut El;
    let mut tmp: *mut El;
    let mut head: *mut El = std::ptr::null_mut();
    let mut linebuf: [u8; 20] = [0; 20];
    let file = File::open("test11.dat").expect("can't open: ");
    let reader = BufReader::new(file);

    for line in reader.lines() {
        let line = line.expect("Error reading line");
        name = unsafe { libc::malloc(std::mem::size_of::<El>()) as *mut El };
        if name.is_null() {
            std::process::exit(-1);
        }
        let c_line = CString::new(line).expect("CString conversion failed");
        libc::strcpy((*name).bname.as_mut_ptr() as *mut i8, c_line.as_ptr() as *const i8);
        unsafe {
            if !head.is_null() {
                (*name).prev = (*head).prev;
                (*name).next = head;
                (*head).prev = name;
                (*(*name).prev).next = name;
            } else {
                (*name).prev = name;
                (*name).next = name;
            }
            head = name;
        }
    }

    tmp = head;
    while !tmp.is_null() {
        let bname = unsafe { std::str::from_utf8_unchecked(&(*tmp).bname) };
        print!("{}", bname);
        tmp = if (*tmp).next == head { std::ptr::null_mut() } else { (*tmp).next };
    }

    libc::fclose(file as *mut libc::FILE);
}
