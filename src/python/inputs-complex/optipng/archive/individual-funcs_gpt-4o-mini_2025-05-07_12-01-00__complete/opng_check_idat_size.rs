#[derive(Debug)]
pub struct ExceptionContext {
    pub etmp: Option<String>,
}

pub struct OpngError {
    pub message: String,
}

const IDAT_SIZE_MAX: u32 = 0x7fffffff;

pub fn opng_check_idat_size(size: u32) -> Result<(), OpngError> {
    if size > IDAT_SIZE_MAX {
        return Err(OpngError {
            message: "IDAT sizes larger than the maximum chunk size are currently unsupported".to_string(),
        });
    }
    Ok(())
}

fn main() {
    match opng_check_idat_size(0x80000000) {
        Ok(_) => println!("Size is acceptable."),
        Err(e) => println!("Error: {}", e.message),
    }
}
