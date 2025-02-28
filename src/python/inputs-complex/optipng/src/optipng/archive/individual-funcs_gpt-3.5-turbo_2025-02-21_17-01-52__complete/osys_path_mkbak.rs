use std::ffi::CStr;

fn osys_path_mkbak(buffer: &mut [u8], path: &CStr) -> Option<&str> {
    let bak_extname = ".bak";
    if path.to_bytes().len() + bak_extname.len() > buffer.len() {
        return None;
    }
    
    buffer[..path.to_bytes().len()].copy_from_slice(path.to_bytes());
    buffer[path.to_bytes().len()..][..bak_extname.len()].copy_from_slice(bak_extname.as_bytes());
    
    // Convert the buffer to a string slice
    Some(std::str::from_utf8(&buffer[..path.to_bytes().len() + bak_extname.len()]).unwrap())
}
