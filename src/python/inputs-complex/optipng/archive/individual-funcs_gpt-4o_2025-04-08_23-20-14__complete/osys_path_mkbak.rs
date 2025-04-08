fn osys_path_mkbak<'a>(buffer: &'a mut String, path: &'a str) -> Option<&'a str> {
    const BAK_EXTNAME: &str = ".bak";
    
    // Check if the buffer can hold the new string
    if path.len() + BAK_EXTNAME.len() > buffer.capacity() {
        return None;
    }
    
    // Clear the buffer and construct the new path
    buffer.clear();
    buffer.push_str(path);
    buffer.push_str(BAK_EXTNAME);
    
    Some(buffer.as_str())
}

fn main() {
    let mut buffer = String::with_capacity(100);
    let path = "example.txt";
    
    match osys_path_mkbak(&mut buffer, path) {
        Some(new_path) => println!("Backup path: {}", new_path),
        None => println!("Buffer is too small to hold the backup path."),
    }
}
