#![allow(unaligned_references)]
#[no_mangle]
#[no_mangle]
fn zmemcpy_range(d: &mut [u64], s: &[u64], i: usize, n: usize) {
    if i < n && n <= s.len() && n <= d.len() {
        d[i..n].copy_from_slice(&s[i..n]);
    }
}

#[no_mangle]
#[no_mangle]
fn main() {
    // Example usage
    let mut destination = vec![0u64; 10];
    let source = vec![1u64, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    zmemcpy_range(&mut destination, &source, 2, 5);
    println!("{:?}", destination);
}
