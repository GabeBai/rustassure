fn bswap_32(x: u32) -> u32 {
    (x >> 24) & 0xff | // Move byte 0 to byte 3
    (x >> 8 & 0xff00) | // Move byte 1 to byte 2
    (x << 8 & 0xff0000) | // Move byte 2 to byte 1
    (x << 24) // Move byte 3 to byte 0
}

fn main() {
    let value: u32 = 0x12345678;
    let swapped = bswap_32(value);
    println!("Original: {:#X}, Swapped: {:#X}", value, swapped);
}
