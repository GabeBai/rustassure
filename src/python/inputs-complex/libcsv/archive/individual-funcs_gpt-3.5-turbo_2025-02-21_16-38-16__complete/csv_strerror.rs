use std::os::raw::c_char;

#[repr(C)]
pub enum CsvError {
    Success,
    ErrorParsingData,
    MemoryExhausted,
    DataSizeTooLarge,
    InvalidStatusCode,
}

pub fn csv_strerror(status: i32) -> *const c_char {
    let error_message = match status {
        0 => "success",
        1 => "error parsing data while strict checking enabled",
        2 => "memory exhausted while increasing buffer size",
        3 => "data size too large",
        _ => "invalid status code",
    };

    error_message.as_ptr() as *const c_char
}
