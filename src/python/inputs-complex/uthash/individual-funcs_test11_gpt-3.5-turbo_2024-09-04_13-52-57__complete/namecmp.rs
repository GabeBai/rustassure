use std::ffi::CString;
use std::cmp::Ordering;

#[repr(C)]
struct UT_hash_handle {
    tbl: *mut UT_hash_table,
    prev: *mut std::ffi::c_void,
    next: *mut std::ffi::c_void,
    hh_prev: *mut UT_hash_handle,
    hh_next: *mut UT_hash_handle,
    key: *const std::ffi::c_void,
    keylen: u32,
    hashv: u32,
}

struct UT_hash_table {
    // Define UT_hash_table fields here if needed
}

struct NameRec {
    boy_name: [u8; 20],
    hh: UT_hash_handle,
}

impl NameRec {
    fn new(name: &str) -> Self {
        let mut boy_name = [0; 20];
        let name_bytes = name.as_bytes();
        boy_name[..name_bytes.len()].copy_from_slice(name_bytes);
        NameRec {
            boy_name,
            hh: UT_hash_handle {
                tbl: std::ptr::null_mut(),
                prev: std::ptr::null_mut(),
                next: std::ptr::null_mut(),
                hh_prev: std::ptr::null_mut(),
                hh_next: std::ptr::null_mut(),
                key: std::ptr::null(),
                keylen: 0,
                hashv: 0,
            },
        }
    }
}

fn namecmp(a: &NameRec, b: &NameRec) -> Ordering {
    let a_name = CString::new(&a.boy_name[..]).expect("Failed to convert CString");
    let b_name = CString::new(&b.boy_name[..]).expect("Failed to convert CString");
    a_name.cmp(&b_name)
}

fn main() {
    let name1 = NameRec::new("John");
    let name2 = NameRec::new("Alice");

    match namecmp(&name1, &name2) {
        Ordering::Less => println!("Name 1 comes before Name 2"),
        Ordering::Equal => println!("Name 1 is equal to Name 2"),
        Ordering::Greater => println!("Name 1 comes after Name 2"),
    }
}
