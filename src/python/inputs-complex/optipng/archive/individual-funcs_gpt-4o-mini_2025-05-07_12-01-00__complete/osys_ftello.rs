use std::ffi::c_void; // Keep this import
// Remove the following line
// use std::os::raw::c_void; 

// Your function definition remains the same
type osys_foffset_t = i64; // Assuming this is the correct type for your use case

extern "C" {
    fn ftell(stream: *mut c_void) -> i64; // Adjust the signature as needed
}

fn osys_ftello(stream: *mut c_void) -> osys_foffset_t {
    unsafe {
        ftell(stream) as osys_foffset_t
    }
}
