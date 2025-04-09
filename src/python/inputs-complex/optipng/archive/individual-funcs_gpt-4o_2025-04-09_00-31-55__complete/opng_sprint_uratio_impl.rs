use std::fmt::Write;

type OpngUllongT = u64;
type OpngUlongestImplT = OpngUllongT;

fn opng_sprint_uratio_impl(
    buffer: &mut String,
    buffer_size: usize,
    num: OpngUlongestImplT,
    denom: OpngUlongestImplT,
    always_percent: bool,
) -> usize {
    let mut integer_part;
    let mut remainder;
    let mut fractional_part;
    let mut scale;
    let scaled_ratio;

    if denom == 0 {
        let result = if num == 0 { "??%" } else { "INFTY%" };
        buffer.clear();
        write!(buffer, "{}", result).unwrap();
        return buffer.len();
    }

    if num < denom && denom / (denom - num) < 20000 {
        scale = 10000;
        scaled_ratio = (num as f64 * scale as f64) / denom as f64;
        fractional_part = (scaled_ratio + 0.5) as u32;
        if fractional_part >= scale {
            fractional_part = scale - 1;
        }
        buffer.clear();
        write!(
            buffer,
            "{:.2}%",
            fractional_part as f64 / 100.0
        )
        .unwrap();
        return buffer.len();
    }

    integer_part = num / denom;
    remainder = num % denom;
    scale = 100;
    scaled_ratio = (remainder as f64 * scale as f64) / denom as f64;
    fractional_part = (scaled_ratio + 0.5) as u32;
    if fractional_part >= scale {
        fractional_part = 0;
        integer_part += 1;
    }

    buffer.clear();
    if always_percent {
        write!(
            buffer,
            "{}.{:02}%",
            integer_part, fractional_part
        )
        .unwrap();
    } else if integer_part < 100 {
        write!(
            buffer,
            "{}.{:02}x",
            integer_part, fractional_part
        )
        .unwrap();
    } else {
        integer_part = num / denom;
        if remainder > (denom - 1) / 2 {
            integer_part += 1;
        }
        write!(buffer, "{}x", integer_part).unwrap();
    }

    buffer.len()
}

fn main() {
    let mut buffer = String::new();
    let buffer_size = 100;
    let num = 123456789;
    let denom = 987654321;
    let always_percent = true;

    let len = opng_sprint_uratio_impl(&mut buffer, buffer_size, num, denom, always_percent);
    println!("Formatted string: {}", buffer);
    println!("Length: {}", len);
}
