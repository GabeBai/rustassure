#![allow(unaligned_references)]
use rand::Rng;
use rand::rngs::StdRng;
use rand::SeedableRng;
use std::time::{SystemTime, UNIX_EPOCH};

#[no_mangle]
#[no_mangle]
fn zrand_libc_rand(out: &mut [u8], _statep: Option<&mut ()>) {
    // Initialize the random number generator with a seed based on the current time
    let seed = SystemTime::now()
        .duration_since(UNIX_EPOCH)
        .expect("Time went backwards")
        .as_secs() as u64;

    let mut rng = StdRng::seed_from_u64(seed);

    let mut n = out.len();
    while n > 0 {
        let ri: u32 = rng.gen();
        let rd = (ri as f64) / ((0x7fffffff as f64) + 1.0);
        let rd = rd * 256.0 * 256.0;
        let ri = rd as u32;

        out[n - 1] = ((ri >> 0) & 255) as u8;
        n -= 1;
        if n == 0 {
            break;
        }
        out[n - 1] = ((ri >> 8) & 255) as u8;
        n -= 1;
    }
}

#[no_mangle]
#[no_mangle]
fn main() {
    let mut buffer = [0u8; 10];
    zrand_libc_rand(&mut buffer, None);
    println!("{:?}", buffer);
}
