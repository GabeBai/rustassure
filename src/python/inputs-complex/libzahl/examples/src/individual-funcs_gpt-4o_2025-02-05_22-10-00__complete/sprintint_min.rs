#![allow(unaligned_references)]
#[no_mangle]
#[no_mangle]
fn sprintint_min(buf: &mut [u8], v: u64) -> usize {
    // Use Rust's formatting to mimic the behavior of sprintint_fix
    let formatted = format!("{:019}", v); // Assuming 19 digits as in the C code
    let bytes = formatted.as_bytes();

    // Copy the formatted number into the buffer
    buf[..bytes.len()].copy_from_slice(bytes);

    // Find the first non-zero character
    let mut i = 0;
    while i < buf.len() && buf[i] == b'0' {
        i += 1;
    }

    // Move the non-zero part to the beginning of the buffer
    let j = buf.len() - i;
    buf.copy_within(i.., 0);
    buf[j] = 0; // Null-terminate the string

    j
}

#[no_mangle]
#[no_mangle]
fn main() {
    let mut buf = [0u8; 20]; // Buffer to hold the formatted number
    let v: u64 = 123456789; // Example number
    let len = sprintint_min(&mut buf, v);
    println!("Formatted number: {}", std::str::from_utf8(&buf[..len]).unwrap());
}
