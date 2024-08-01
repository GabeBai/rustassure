use std::io::{self, Read};

struct _IO_FILE {
    _flags: i32,
    _IO_read_ptr: *mut u8,
    _IO_read_end: *mut u8,
    _IO_read_base: *mut u8,
    _IO_write_base: *mut u8,
    _IO_write_ptr: *mut u8,
    _IO_write_end: *mut u8,
    _IO_buf_base: *mut u8,
    _IO_buf_end: *mut u8,
    _IO_save_base: *mut u8,
    _IO_backup_base: *mut u8,
    _IO_save_end: *mut u8,
    _markers: *mut _IO_marker,
    _chain: *mut _IO_FILE,
    _fileno: i32,
    _flags2: i32,
    _old_offset: i64,
    _cur_column: u16,
    _vtable_offset: i8,
    _shortbuf: [u8; 1],
    _lock: *mut _IO_lock_t,
    _offset: i64,
    __pad1: *mut u8,
    __pad2: *mut u8,
    __pad3: *mut u8,
    __pad4: *mut u8,
    __pad5: usize,
    _mode: i32,
    _unused2: [i32; 15],
}

type _IO_lock_t = ();

struct _IO_marker {}

fn main() {
    let mut buffer = [0; 10];
    let stdin = io::stdin();
    
    let mut handle = stdin.lock();
    let bytes_read = handle.read(&mut buffer).unwrap();
    
    println!("Read {} bytes: {:?}", bytes_read, &buffer[..bytes_read]);
}
