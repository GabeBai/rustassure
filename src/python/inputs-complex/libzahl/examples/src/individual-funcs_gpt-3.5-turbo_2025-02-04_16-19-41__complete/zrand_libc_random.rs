#![allow(unaligned_references)]
use rand::{Rng, SeedableRng, rngs::StdRng};
use std::time::{SystemTime, UNIX_EPOCH};

#[no_mangle]
#[no_mangle]
fn zrand_libc_random(out: &mut [u8], statep: &mut std::ffi::c_void) {
    static mut INITED: bool = false;
    let mut rng = StdRng::seed_from_u64(SystemTime::now().duration_since(UNIX_EPOCH).unwrap().as_secs());

    unsafe {
        if !INITED {
            INITED = true;
            let seed = out.as_ptr() as usize | time(std::ptr::null_mut()) as usize;
            rng = StdRng::seed_from_u64(seed as u64);
        }
    }

    for byte in out.iter_mut() {
        let ri = rng.gen::<u32>();
        *byte = (ri >> 0) as u8 & 255;
        if out.len() == 1 {
            break;
        }
        *byte = (ri >> 8) as u8 & 255;
        if out.len() == 1 {
            break;
        }
        *byte = (ri >> 16) as u8 & 255;
    }

    // Ignoring statep as it is not used in the Rust code
}

#[no_mangle]
#[no_mangle]
fn time(_: *mut std::ffi::c_void) -> i64 {
    SystemTime::now().duration_since(UNIX_EPOCH).unwrap().as_secs() as i64
}
