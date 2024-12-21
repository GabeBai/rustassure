static mut DEBUG_THRESHOLD: i32 = 0;

pub fn mbedtls_debug_set_threshold(threshold: i32) {
    unsafe {
        DEBUG_THRESHOLD = threshold;
    }
}
