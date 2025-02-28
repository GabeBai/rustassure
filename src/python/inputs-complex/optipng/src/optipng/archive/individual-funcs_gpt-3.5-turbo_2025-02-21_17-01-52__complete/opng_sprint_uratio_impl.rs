use std::fmt::Write;

type OpngUllongT = u64;

fn opng_sprint_uratio_impl(buffer: &mut String, num: OpngUllongT, denom: OpngUllongT, always_percent: bool) -> Result<(), std::fmt::Error> {
    let mut integer_part: OpngUllongT;
    let mut remainder: OpngUllongT;
    let mut fractional_part: u32;
    let mut scale: u32;
    let mut scaled_ratio: f64;

    if denom == 0 {
        return write!(buffer, "{}", if num == 0 { "??%" } else { "INFTY%" });
    }

    if num < denom && denom / (denom - num) < 20000 {
        scale = 10000;
        scaled_ratio = (num as f64 * scale as f64) / denom as f64;
        fractional_part = (scaled_ratio + 0.5) as u32;
        if fractional_part >= scale {
            fractional_part = scale - 1;
        }
        return write!(buffer, "{}.{:02}%", fractional_part / 100, fractional_part % 100);
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

    if always_percent {
        return write!(buffer, "{}{:02}%", integer_part, fractional_part);
    }

    if integer_part < 100 {
        return write!(buffer, "{}.{:02}x", integer_part, fractional_part);
    }

    integer_part = num / denom;
    if remainder > (denom - 1) / 2 {
        integer_part += 1;
    }

    write!(buffer, "{}x", integer_part)
}
