#[repr(u8)]
enum ErrorCode {
    Success,
    ErrorParsingData,
    MemoryExhausted,
    DataSizeTooLarge,
    InvalidStatusCode,
}

const CSV_ERRORS: [&str; 5] = [
    "success",
    "error parsing data while strict checking enabled",
    "memory exhausted while increasing buffer size",
    "data size too large",
    "invalid status code",
];

fn csv_strerror(status: i32) -> &'static str {
    match status {
        0..=3 => CSV_ERRORS[status as usize],
        _ => CSV_ERRORS[4],
    }
}
