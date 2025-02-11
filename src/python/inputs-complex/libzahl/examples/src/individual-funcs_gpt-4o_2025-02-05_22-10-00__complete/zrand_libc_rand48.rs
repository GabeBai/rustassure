#![allow(unaligned_references)]
use std::time::{SystemTime, UNIX_EPOCH};

#[no_mangle]
#[no_mangle]
fn zrand_libc_rand48(out: &mut [u8], _statep: &mut ()) {
    static mut INITED: bool = false;
    let mut r0: i64;
    let mut r1: i64;

    unsafe {
        if !INITED {
            INITED = true;
            let seed = out.as_ptr() as i64 | SystemTime::now().duration_since(UNIX_EPOCH).unwrap().as_secs() as i64;
            rand::srand(seed as u64);
        }
    }

    for byte in out.iter_mut().rev() {
        r0 = (rand::lrand48() & 15) as i64;
        r1 = (rand::lrand48() & 15) as i64;
        *byte = ((r0 << 4) | r1) as u8;
    }
}

mod rand {
    use std::sync::atomic::{AtomicU64, Ordering};

    static SEED: AtomicU64 = AtomicU64::new(0);

#[no_mangle]
#[no_mangle]
    pub fn srand(seed: u64) {
        SEED.store(seed, Ordering::SeqCst);
    }

#[no_mangle]
#[no_mangle]
    pub fn lrand48() -> u64 {
        let mut seed = SEED.load(Ordering::SeqCst);
        seed = (0x5DEECE66D_u64.wrapping_mul(seed) + 0xB_u64) & ((1_u64 << 48) - 1);
        SEED.store(seed, Ordering::SeqCst);
        (seed >> 16) & 0xFFFFFFFF
    }
}
