use std::os::raw::c_char;

#[repr(C)]
union pthread_attr_t {
    __size: [u8; 56],
    __align: std::os::raw::c_long,
}

fn TrivialHash(s: *const c_char, len: usize) -> u32 {
    let mut h: u32 = 0;
    let mut i: usize = 0;
    while i < len {
        h += unsafe { *s.offset(i as isize) as u8 as u32 };
        i += 1;
    }
    h
}
