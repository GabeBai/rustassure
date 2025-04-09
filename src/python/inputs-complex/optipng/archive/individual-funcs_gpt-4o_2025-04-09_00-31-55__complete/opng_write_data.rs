use std::convert::TryInto; // Bring the TryInto trait into scope

fn opng_write_data(data: &[u8]) {
    // Assuming data is a slice of at least 4 bytes
    let size_bytes: [u8; 4] = data[0..4].try_into().unwrap();
    let size = u32::from_be_bytes(size_bytes);

    // Use the size variable as needed
    println!("Size: {}", size);
}

fn main() {
    let data = [0x00, 0x00, 0x00, 0x01]; // Example data
    opng_write_data(&data);
}
