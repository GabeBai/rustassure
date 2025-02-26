use std::os::raw::c_void;

type png_byte = u8;
type png_structp = *mut c_void; // Pointer to the png_struct
type png_bytep = *mut png_byte; // Pointer to png_byte
type png_size_t = usize; // Size type

extern "C" fn opng_read_data(
    png_ptr: png_structp,
    data: png_bytep,
    length: png_size_t,
) {
    // Function implementation goes here
}
