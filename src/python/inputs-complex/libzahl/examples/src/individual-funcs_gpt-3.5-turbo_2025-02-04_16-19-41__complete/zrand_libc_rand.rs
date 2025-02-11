#![allow(unaligned_references)]
use rand::{Rng, SeedableRng};
use std::time::{SystemTime, UNIX_EPOCH};

#[no_mangle]
#[no_mangle]
fn zrand_libc_rand(out: &mut [u8], mut statep: Option<&mut u8>) {
    static mut INITED: bool = false;

    let mut rng = rand::rngs::StdRng::seed_from_u64(SystemTime::now().duration_since(UNIX_EPOCH).unwrap().as_secs());

    unsafe {
        if !INITED {
            INITED = true;
            // No need to call srand in Rust
        }
    }

    for byte in out.iter_mut().rev() {
        let ri: u32 = rng.gen();
        let rd: f64 = ri as f64 / (0x7fffffff + 1) as f64;
        let rd_scaled: f64 = rd * 256.0 * 256.0;
        let ri_scaled: u32 = rd_scaled as u32;
        *byte = (ri_scaled >> 0) as u8 & 255;
        if out.len() == 1 {
            break;
        }
        *byte = (ri_scaled >> 8) as u8 & 255;
    }

    // Ignoring statep in Rust
}

#[no_mangle]
#[no_mangle]
fn main() {
    let mut output = vec![0; 10];
    zrand_libc_rand(&mut output, None);
    println!("{:?}", output);
}
