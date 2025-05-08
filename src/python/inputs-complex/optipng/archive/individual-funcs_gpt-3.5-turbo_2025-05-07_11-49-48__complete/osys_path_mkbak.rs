fn osys_path_mkbak<'a>(buffer: &'a mut [u8], path: &'a str) -> Option<&'a str> {
    let bak_extname = ".bak";
    if path.len() + bak_extname.len() > buffer.len() {
        return None;
    }
    
    buffer[..path.len()].copy_from_slice(path.as_bytes());
    buffer[path.len()..].copy_from_slice(bak_extname.as_bytes());
    
    Some(std::str::from_utf8(&buffer[..path.len() + bak_extname.len()]).unwrap())
}
