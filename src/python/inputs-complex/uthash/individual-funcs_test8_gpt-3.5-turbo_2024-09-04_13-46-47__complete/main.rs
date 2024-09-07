use std::ptr;

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
    // Define the struct fields here
}

struct ExampleUser {
    id: i32,
    cookie: i32,
    hh: UT_hash_handle,
}

impl ExampleUser {
    fn as_ut_hash_handle(&self) -> Box<UT_hash_handle> {
        Box::new(UT_hash_handle {
            tbl: ptr::null_mut(),
            prev: ptr::null_mut(),
            next: ptr::null_mut(),
            hh_prev: ptr::null_mut(),
            hh_next: ptr::null_mut(),
            key: &self.id as *const _ as *const std::ffi::c_void,
            keylen: std::mem::size_of::<i32>() as u32,
            hashv: self.hh.hashv,
        })
    }
}

fn main() {
    let mut users: *mut UT_hash_handle = std::ptr::null_mut();

    // Your existing code to create and manipulate ExampleUser instances

    // Convert ExampleUser to UT_hash_handle and assign to users
    let user = ExampleUser {
        id: 1,
        cookie: 123,
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
    };
    users = Box::into_raw(user.as_ut_hash_handle());

    // Rest of your code
}
