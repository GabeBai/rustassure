use std::fmt::Write; // For using write! macro

type OpngUllongT = u64; // Assuming opng_ullong_t is equivalent to u64

fn opng_sprint_uratio_impl(buffer: &mut String, buffer_size: usize,
                            num: OpngUllongT, denom: OpngUllongT,
                            always_percent: i32) -> i32 {
    if denom == 0 {
        let msg = if num == 0 { "??%%" } else { "INFTY%%" };
        let _ = write!(buffer, "{}", msg); // Simulating opng_snprintf_impl
        return msg.len() as i32; // Return the length of the message
    }

    let mut integer_part: OpngUllongT;
    let mut remainder: OpngUllongT;
    let mut fractional_part: u32; // Declare as mutable
    let scale: u32;
    let scaled_ratio: f64;

    if num < denom && denom / (denom - num) < 20000 {
        scale = 10000;
        scaled_ratio = (num as f64 * scale as f64) / denom as f64;
        fractional_part = (scaled_ratio + 0.5) as u32;
        if fractional_part >= scale {
            fractional_part = scale - 1;
        }
        let _ = write!(buffer, "{}.{:02}%%", fractional_part / 100, fractional_part % 100);
        return buffer.len() as i32; // Return the length of the buffer
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

    if always_percent != 0 {
        let _ = write!(buffer, "{}.{:02}%%", integer_part, fractional_part);
        return buffer.len() as i32;
    }

    if integer_part < 100 {
        let _ = write!(buffer, "{}.{:02}x", integer_part, fractional_part);
        return buffer.len() as i32;
    }

    integer_part = num / denom;
    if remainder > (denom - 1) / 2 {
        integer_part += 1;
    }

    let _ = write!(buffer, "{}x", integer_part);
    return buffer.len() as i32;
}
