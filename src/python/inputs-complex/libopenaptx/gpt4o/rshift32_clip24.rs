fn clip_intp2(value: i32, p: i32) -> i32 {
    let min = -(1 << p);
    let max = (1 << p) - 1;
    if value < min {
        min
    } else if value > max {
        max
    } else {
        value
    }
}

fn rshift32(value: i32, shift: u32) -> i32 {
    let rounding = 1 << (shift - 1);
    let mask = (1 << (shift + 1)) - 1;
    ((value + rounding) >> shift) - ((value & mask) == rounding) as i32
}

fn rshift32_clip24(value: i32, shift: u32) -> i32 {
    clip_intp2(rshift32(value, shift), 23)
}

fn main() {
    // Example usage
    let value = 123456;
    let shift = 5;
    let result = rshift32_clip24(value, shift);
    println!("Result: {}", result);
}
