fn my_strdup(s: &str) -> Option<String> {
    let n = s.len() + 1; // Length of the string plus null terminator
    let mut dup = Vec::with_capacity(n); // Allocate a vector with the required capacity

    // Copy the string into the vector
    dup.extend_from_slice(s.as_bytes());
    dup.push(0); // Add null terminator

    // Convert the vector into a String
    // Note: The null terminator is not part of the String, so we just return the String
    String::from_utf8(dup).ok()
}
