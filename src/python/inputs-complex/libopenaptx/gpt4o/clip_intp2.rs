type int32_t = i32;
type uint32_t = u32;

fn clip_intp2(a: int32_t, p: u32) -> int32_t {
    if ((a as uint32_t + (1u32 << p)) & !((2u32 << p) - 1)) != 0 {
        (a >> 31) ^ ((1 << p) - 1)
    } else {
        a
    }
}
