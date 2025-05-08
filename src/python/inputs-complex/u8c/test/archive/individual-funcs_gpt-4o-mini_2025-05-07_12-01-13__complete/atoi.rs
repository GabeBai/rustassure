fn atoi(nptr: &str) -> Result<i32, std::num::ParseIntError> {
    nptr.trim().parse::<i32>()
}

fn main() {
    let input = "123";
    match atoi(input) {
        Ok(value) => println!("Converted value: {}", value),
        Err(e) => println!("Error converting string to integer: {}", e),
    }
}
