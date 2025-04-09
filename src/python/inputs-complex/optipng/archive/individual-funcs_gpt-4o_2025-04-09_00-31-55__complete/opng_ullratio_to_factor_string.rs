use std::fmt::Write; // Import the Write trait for formatting

struct OpngUllratio {
    num: u64,
    denom: u64,
}

fn opng_ullratio_to_factor_string(buffer: &mut String, ratio: &OpngUllratio) -> usize {
    let num = ratio.num;
    let denom = ratio.denom;
    opng_sprint_uratio_impl(buffer, num, denom)
}

fn opng_sprint_uratio_impl(buffer: &mut String, num: u64, denom: u64) -> usize {
    // Use the write! macro to format the string
    write!(buffer, "{}/{}", num, denom).unwrap();
    buffer.len()
}

fn main() {
    let ratio = OpngUllratio { num: 3, denom: 4 };
    let mut buffer = String::new();
    let length = opng_ullratio_to_factor_string(&mut buffer, &ratio);
    println!("Formatted string: {}", buffer);
    println!("Length of formatted string: {}", length);
}
