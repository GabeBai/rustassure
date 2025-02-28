use std::ffi::c_void;
use std::ptr;

const SIG_TRNS: [u8; 4] = [0x74, 0x52, 0x4e, 0x53];

fn opng_is_image_chunk(chunk_type: &[u8]) -> i32 {
    if (chunk_type[0] & 0x20) == 0 {
        return 1;
    }
    if unsafe { memcmp(chunk_type.as_ptr() as *const c_void, SIG_TRNS.as_ptr() as *const c_void, 4) } == 0 {
        return 1;
    }
    0
}

extern "C" fn memcmp(s1: *const c_void, s2: *const c_void, n: usize) -> i32 {
    // Implementation of memcmp can be done here if needed
    // For now, we can use std::ptr::read to compare bytes
    let s1 = s1 as *const u8;
    let s2 = s2 as *const u8;

    for i in 0..n {
        let byte1 = unsafe { *s1.add(i) };
        let byte2 = unsafe { *s2.add(i) };
        if byte1 != byte2 {
            return byte1 as i32 - byte2 as i32;
        }
    }
    0
}
