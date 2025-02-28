pub fn u8strncat<'a>(dest: &'a mut Vec<u8>, src: &'a [u8], n: usize) -> &'a mut Vec<u8> {
    // Find the end of the destination vector
    let len = dest.len();
    // Ensure the destination has enough capacity
    dest.reserve(n + 1); // +1 for the null terminator

    // Append the source bytes to the destination
    dest.extend_from_slice(&src[..n.min(src.len())]);

    // Add the null terminator
    dest.push(0); // This is equivalent to adding '\0' in C

    // Return the mutable reference to the destination
    dest
}
