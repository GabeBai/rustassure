fn bswap_16(x: u16) -> u16 {
    (x >> 8) | (x << 8)
}

fn main() {
    let value: u16 = 0x1234;
    let swapped = bswap_16(value);
    println!("Original: {:#X}, Swapped: {:#X}", value, swapped);
}
