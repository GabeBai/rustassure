extern crate ring;

use ring::digest;

fn main() {
    // Example usage of the `ring` crate
    let data = b"hello, world";
    let digest = digest::digest(&digest::SHA256, data);
    println!("SHA-256 digest: {:?}", digest);
}

extern crate ring;

use ring::digest;

fn compute_sha256(data: &[u8]) -> Vec<u8> {
    let digest = digest::digest(&digest::SHA256, data);
    digest.as_ref().to_vec()
}

fn main() {
    let data = b"hello, world";
    let output = compute_sha256(data);
    for byte in output {
        print!("{:02x}", byte);
    }
    println!();
}
