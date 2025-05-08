use std::fmt::Write;

#[derive(Debug)]
struct OpngUlRatio {
    num: u64,
    denom: u64,
}

fn opng_ulratio_to_percent_string(buffer: &mut [u8], ratio: &OpngUlRatio) -> Result<usize, std::fmt::Error> {
    let num = ratio.num;
    let denom = ratio.denom;
    let result = format!("{:.2}%", (num as f64 / denom as f64) * 100.0);
    let bytes_written = buffer.write(result.as_bytes())?;
    Ok(bytes_written)
}

fn main() {
    let ratio = OpngUlRatio { num: 3, denom: 5 };
    let mut buffer = [0u8; 20]; // Example buffer size of 20 bytes
    let bytes_written = opng_ulratio_to_percent_string(&mut buffer, &ratio).unwrap();
    println!("Bytes written: {}", bytes_written);
    println!("Buffer content: {:?}", std::str::from_utf8(&buffer).unwrap());
}
