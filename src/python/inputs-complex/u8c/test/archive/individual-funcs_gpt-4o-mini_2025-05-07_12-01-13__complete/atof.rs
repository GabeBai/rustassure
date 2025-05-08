fn atof(input: &str) -> f64 {
    input.parse::<f64>().unwrap_or(0.0)
}

fn main() {
    let input = "3.14";
    let value = atof(input);
    println!("The value is: {}", value);
}
