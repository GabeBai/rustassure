#![allow(unaligned_references)]
use rand::{Rng, SeedableRng};
use rand::rngs::StdRng;
use std::time::{SystemTime, UNIX_EPOCH};

#[no_mangle]
#[no_mangle]
fn zrand_libc_random(out: &mut [u8], _statep: Option<&mut ()>) {
    // Initialize the random number generator with a seed
    let seed = SystemTime::now()
        .duration_since(UNIX_EPOCH)
        .expect("Time went backwards")
        .as_secs() as u64;

    let mut rng = StdRng::seed_from_u64(seed);

    // Fill the output buffer with random bytes
    for byte in out.iter_mut() {
        *byte = rng.gen();
    }
}

#[no_mangle]
#[no_mangle]
fn main() {
    let mut buffer = [0u8; 10]; // Example buffer
    zrand_libc_random(&mut buffer, None);
    println!("{:?}", buffer);
}
