use std::fmt::Write;

fn opng_sprint_uratio_impl(
    buffer: &mut String,
    num: u64,
    denom: u64,
    always_percent: bool,
) -> usize {
    if denom == 0 {
        let result = write!(buffer, "{}", if num == 0 { "??%" } else { "INFTY%" });
        return result.map(|_| buffer.len()).unwrap_or(0);
    }

    let integer_part;
    let remainder;
    let fractional_part;
    let scale;
    let scaled_ratio;

    if num < denom && denom / (denom - num) < 20000 {
        scale = 10000;
        scaled_ratio = (num as f64 * scale as f64) / denom as f64;
        fractional_part = (scaled_ratio + 0.5) as u32;
        let fractional_part = if fractional_part >= scale {
            scale - 1
        } else {
            fractional_part
        };
        let result = write!(
            buffer,
            "{}.{:02}%",
            fractional_part / 100,
            fractional_part % 100
        );
        return result.map(|_| buffer.len()).unwrap_or(0);
    }

    integer_part = num / denom;
    remainder = num % denom;
    scale = 100;
    scaled_ratio = (remainder as f64 * scale as f64) / denom as f64;
    fractional_part = (scaled_ratio + 0.5) as u32;
    let fractional_part = if fractional_part >= scale {
        0
    } else {
        fractional_part
    };

    if fractional_part == 0 {
        integer_part + 1;
    }

    if always_percent {
        let result = write!(buffer, "{}{:02}%", integer_part, fractional_part);
        return result.map(|_| buffer.len()).unwrap_or(0);
    }

    if integer_part < 100 {
        let result = write!(buffer, "{}.{:02}x", integer_part, fractional_part);
        return result.map(|_| buffer.len()).unwrap_or(0);
    }

    let integer_part = num / denom;
    if remainder > (denom - 1) / 2 {
        integer_part + 1;
    }
    let result = write!(buffer, "{}x", integer_part);
    result.map(|_| buffer.len()).unwrap_or(0)
}
