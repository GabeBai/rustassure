use std::fmt::Write;

struct OpngUllratio {
    num: u64,
    denom: u64,
}

fn opng_ullratio_to_percent_string(buffer: &mut String, ratio: &OpngUllratio) -> Result<(), std::fmt::Error> {
    let num = ratio.num;
    let denom = ratio.denom;
    opng_sprint_uratio_impl(buffer, num, denom, true)
}

fn opng_sprint_uratio_impl(buffer: &mut String, num: u64, denom: u64, is_percent: bool) -> Result<(), std::fmt::Error> {
    if denom == 0 {
        return Err(std::fmt::Error); // Handle division by zero
    }
    let ratio = num as f64 / denom as f64;
    if is_percent {
        write!(buffer, "{:.2}%", ratio * 100.0)
    } else {
        write!(buffer, "{:.2}", ratio)
    }
}

fn main() {
    let ratio = OpngUllratio { num: 50, denom: 100 };
    let mut buffer = String::new();
    match opng_ullratio_to_percent_string(&mut buffer, &ratio) {
        Ok(_) => println!("Result: {}", buffer),
        Err(_) => println!("Error formatting ratio"),
    }
}
