fn osys_path_mkbak<'a>(buffer: &'a mut String, path: &str) -> Option<&'a String> {
    const BAK_EXTNAME: &str = ".bak";
    
    // Check if the combined length of path and extension exceeds the buffer capacity
    if path.len() + BAK_EXTNAME.len() > buffer.capacity() {
        return None; // Return None if the buffer is not large enough
    }
    
    // Clear the buffer and append the path and extension
    buffer.clear();
    buffer.push_str(path);
    buffer.push_str(BAK_EXTNAME);
    
    Some(buffer) // Return a reference to the modified buffer
}
