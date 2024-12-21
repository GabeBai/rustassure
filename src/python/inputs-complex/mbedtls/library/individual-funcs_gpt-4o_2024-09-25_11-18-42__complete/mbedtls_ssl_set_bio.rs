struct MbedtlsSslContext {
    p_bio: *mut std::ffi::c_void,
    f_send: Option<extern "C" fn(*mut std::ffi::c_void, *const u8, usize) -> i32>,
    f_recv: Option<extern "C" fn(*mut std::ffi::c_void, *mut u8, usize) -> i32>,
    f_recv_timeout: Option<extern "C" fn(*mut std::ffi::c_void, *mut u8, usize, u32) -> i32>,
}

impl MbedtlsSslContext {
    fn set_bio(
        &mut self,
        p_bio: *mut std::ffi::c_void,
        f_send: Option<extern "C" fn(*mut std::ffi::c_void, *const u8, usize) -> i32>,
        f_recv: Option<extern "C" fn(*mut std::ffi::c_void, *mut u8, usize) -> i32>,
        f_recv_timeout: Option<extern "C" fn(*mut std::ffi::c_void, *mut u8, usize, u32) -> i32>,
    ) {
        self.p_bio = p_bio;
        self.f_send = f_send;
        self.f_recv = f_recv;
        self.f_recv_timeout = f_recv_timeout;
    }
}
