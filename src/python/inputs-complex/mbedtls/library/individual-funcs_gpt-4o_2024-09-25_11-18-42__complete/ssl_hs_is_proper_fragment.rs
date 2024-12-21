use std::cmp::Ordering;
use std::ptr;

#[repr(C)]
struct MbedtlsSslContext {
    in_msglen: usize,
    in_hslen: usize,
    in_msg: *const u8,
}

fn ssl_hs_is_proper_fragment(ssl: &MbedtlsSslContext) -> i32 {
    unsafe {
        if ssl.in_msglen < ssl.in_hslen ||
            memcmp(ssl.in_msg.add(6), b"\0\0\0".as_ptr(), 3) != Ordering::Equal ||
            memcmp(ssl.in_msg.add(9), ssl.in_msg.add(1), 3) != Ordering::Equal {
            return 1;
        }
    }
    0
}

unsafe fn memcmp(s1: *const u8, s2: *const u8, n: usize) -> Ordering {
    for i in 0..n {
        let a = *s1.add(i);
        let b = *s2.add(i);
        if a != b {
            return a.cmp(&b);
        }
    }
    Ordering::Equal
}

fn main() {
    // Example usage
    let in_msg: [u8; 12] = [0; 12];
    let ssl = MbedtlsSslContext {
        in_msglen: 12,
        in_hslen: 12,
        in_msg: in_msg.as_ptr(),
    };

    let result = ssl_hs_is_proper_fragment(&ssl);
    println!("Result: {}", result);
}
