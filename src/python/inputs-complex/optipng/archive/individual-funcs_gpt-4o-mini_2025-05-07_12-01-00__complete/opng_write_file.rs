unsafe {
    png_destroy_write_struct(&mut write_ptr as *mut *mut c_void, &mut write_info_ptr as *mut *mut c_void);
}

unsafe {
    png_destroy_write_struct(&mut write_ptr as *mut *mut c_void, &mut write_info_ptr as *mut *mut c_void);
}
