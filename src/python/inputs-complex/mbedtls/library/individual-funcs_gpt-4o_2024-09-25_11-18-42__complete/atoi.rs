fn atoi(nptr: &str) -> Result<i32, std::num::ParseIntError> {
    nptr.parse::<i32>()
}

fn main() {
    let input = "12345";
    match atoi(input) {
        Ok(value) => println!("Converted value: {}", value),
        Err(e) => println!("Failed to convert: {}", e),
    }
}
