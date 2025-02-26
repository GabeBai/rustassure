pub fn digittoint(c: i32) -> i32 {
    __maskrune(c as u32, 0x0F)
}

extern "C" {
    fn __maskrune(c: u32, mask: u32) -> i32;
}