fn atof(nptr: &str) -> Result<f64, std::num::ParseFloatError> {
    nptr.parse::<f64>()
}

fn main() {
    let input = "123.456";
    match atof(input) {
        Ok(value) => println!("Parsed value: {}", value),
        Err(e) => println!("Failed to parse float: {}", e),
    }
}
