extern "C" {
    fn url_get_fragment(url: *const i8) -> *mut i8;
}

fn url_get_hash(url: *const i8) -> *mut i8 {
    unsafe { url_get_fragment(url) }
}
