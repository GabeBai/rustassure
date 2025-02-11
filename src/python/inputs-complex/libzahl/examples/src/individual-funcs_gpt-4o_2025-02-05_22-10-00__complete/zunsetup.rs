#![allow(unaligned_references)]
#[macro_use]
extern crate lazy_static;

use std::sync::atomic::{AtomicBool, Ordering};
use std::sync::Mutex;
use std::ptr;

lazy_static! {
    static ref LIBZAHL_SET_UP: AtomicBool = AtomicBool::new(false);
    static ref LIBZAHL_POOL: Mutex<Vec<Vec<*mut u8>>> = Mutex::new(vec![vec![]; std::mem::size_of::<usize>() * 8]);
    static ref LIBZAHL_POOL_N: Mutex<Vec<usize>> = Mutex::new(vec![0; std::mem::size_of::<usize>() * 8]);
    static ref LIBZAHL_TEMP_STACK: Mutex<Vec<*mut u8>> = Mutex::new(vec![]);
}

#[repr(C, packed)]struct Zahl {
    sign: i32,
    used: usize,
    alloced: usize,
    chars: *mut u64,
}

impl Zahl {
#[no_mangle]
#[no_mangle]
    fn free_chars(&mut self) {
        if !self.chars.is_null() {
            unsafe {
                Box::from_raw(self.chars);
            }
            self.chars = ptr::null_mut();
        }
    }
}

#[no_mangle]
#[no_mangle]
fn zunsetup() {
    if LIBZAHL_SET_UP.swap(false, Ordering::SeqCst) {
        let mut pool = LIBZAHL_POOL.lock().unwrap();
        let mut pool_n = LIBZAHL_POOL_N.lock().unwrap();
        let mut temp_stack = LIBZAHL_TEMP_STACK.lock().unwrap();

        // Free all temporary Zahl structures
        // Assuming you have a list of Zahl instances similar to libzahl_tmp_div, libzahl_tmp_mod, etc.
        let mut tmp_div = Zahl { sign: 0, used: 0, alloced: 0, chars: ptr::null_mut() };
        tmp_div.free_chars();
        // Repeat for other Zahl instances...

        // Free libzahl_tmp_divmod_ds
        for i in 0..64 {
            // Assuming you have a list of Zahl instances for libzahl_tmp_divmod_ds
            let mut tmp_divmod_ds = Zahl { sign: 0, used: 0, alloced: 0, chars: ptr::null_mut() };
            tmp_divmod_ds.free_chars();
        }

        // Free libzahl_pool
        for i in 0..pool.len() {
            while pool_n[i] > 0 {
                pool_n[i] -= 1;
                let ptr = pool[i][pool_n[i]];
                if !ptr.is_null() {
                    unsafe {
                        Box::from_raw(ptr);
                    }
                }
            }
            pool[i].clear();
        }

        // Free libzahl_temp_stack
        for ptr in temp_stack.iter() {
            if !ptr.is_null() {
                unsafe {
                    Box::from_raw(*ptr);
                }
            }
        }
        temp_stack.clear();
    }
}
