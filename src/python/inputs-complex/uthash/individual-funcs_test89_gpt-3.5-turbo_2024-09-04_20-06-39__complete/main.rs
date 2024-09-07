use std::mem;
use std::ptr;

#[repr(C)]
struct FILE {
    _flags: i32,
    _IO_read_ptr: *mut i8,
    _IO_read_end: *mut i8,
    _IO_read_base: *mut i8,
    _IO_write_base: *mut i8,
    _IO_write_ptr: *mut i8,
    _IO_write_end: *mut i8,
    _IO_buf_base: *mut i8,
    _IO_buf_end: *mut i8,
    _IO_save_base: *mut i8,
    _IO_backup_base: *mut i8,
    _IO_save_end: *mut i8,
    _markers: *mut _IO_marker,
    _chain: *mut FILE,
    _fileno: i32,
    _flags2: i32,
    _old_offset: __off_t,
    _cur_column: u16,
    _vtable_offset: i8,
    _shortbuf: [i8; 1],
    _lock: *mut _IO_lock_t,
    _offset: __off64_t,
    _codecvt: *mut _IO_codecvt,
    _wide_data: *mut _IO_wide_data,
    _freeres_list: *mut FILE,
    _freeres_buf: *mut std::ffi::c_void,
    __pad5: usize,
    _mode: i32,
    _unused2: [i32; 15],
}

static mut stdin: *mut FILE = std::ptr::null_mut();
static mut stdout: *mut FILE = std::ptr::null_mut();
static mut stderr: *mut FILE = std::ptr::null_mut();

#[no_mangle]
extern "C" fn puts(s: *const i8) -> i32;

#[repr(C)]
union pthread_attr_t {
    __size: [i8; 56],
    __align: i64,
}

extern "C" {
    fn malloc(size: usize) -> *mut std::ffi::c_void;
    fn memset(s: *mut std::ffi::c_void, c: i32, n: usize) -> *mut std::ffi::c_void;
}

type clock_time_t = i32;

struct netq_t {
    t: clock_time_t,
}

fn netq_insert_node(nq: &mut Option<Box<netq_t>>, node: Box<netq_t>) -> i32 {
    // Implementation of netq_insert_node function
    1
}

fn dump_queue(nq: Option<Box<netq_t>>) {
    // Implementation of dump_queue function
}

fn main() {
    let mut nq: Option<Box<netq_t>> = None;
    let timestamps = [300, 100, 200, 400, 500];
    
    for &timestamp in timestamps.iter() {
        let node = Box::new(netq_t { t: timestamp });
        let node_ptr = Box::into_raw(node);
        
        unsafe {
            let node_ptr = node_ptr as *mut std::ffi::c_void;
            let size = mem::size_of::<netq_t>();
            let new_node = malloc(size) as *mut netq_t;
            memset(new_node as *mut std::ffi::c_void, 0, size);
            ptr::copy_nonoverlapping(node_ptr, new_node as *mut std::ffi::c_void, 1);
            
            (*new_node).t = timestamp;
            
            if netq_insert_node(&mut nq, Box::from_raw(new_node)) != 1 {
                puts("ERROR\0".as_ptr());
            }
        }
    }
    
    dump_queue(nq);
}
