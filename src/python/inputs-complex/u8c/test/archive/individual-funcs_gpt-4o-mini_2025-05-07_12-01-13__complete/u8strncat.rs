fn u8strncat<'a>(dest: &'a mut Vec<u8>, src: &'a [u8], n: usize) -> &'a mut Vec<u8> {
    // Find the end of the destination vector
    let len = dest.len();
    // Extend the destination vector to accommodate the new characters
    dest.resize(len + n, 0); // Resize to make space for n characters

    // Copy the source bytes into the destination vector
    let src_len = src.len().min(n);
    dest[len..len + src_len].copy_from_slice(&src[..src_len]);

    // Null-terminate the destination vector
    dest.push(0); // Add a null terminator

    // Return the mutable reference to the destination vector
    dest
}
