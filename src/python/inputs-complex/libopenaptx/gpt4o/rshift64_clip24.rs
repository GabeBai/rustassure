fn rshift64(value: i64, shift: u32) -> i64 {
    let rounding = 1i64 << (shift - 1);
    let mask = (1i64 << (shift + 1)) - 1;
    ((value + rounding) >> shift) - ((value & mask) == rounding) as i64
}

fn clip_intp2(value: i32, bits: u32) -> i32 {
    let max_value = (1 << (bits - 1)) - 1;
    let min_value = -(1 << (bits - 1));
    if value > max_value {
        max_value
    } else if value < min_value {
        min_value
    } else {
        value
    }
}

fn rshift64_clip24(value: i64, shift: u32) -> i32 {
    clip_intp2(rshift64(value, shift) as i32, 24)
}

fn main() {
    // Example usage
    let value: i64 = 123456789;
    let shift: u32 = 5;
    let result = rshift64_clip24(value, shift);
    println!("Result: {}", result);
}
