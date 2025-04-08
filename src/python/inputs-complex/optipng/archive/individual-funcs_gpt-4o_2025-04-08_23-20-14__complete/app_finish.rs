fn main() {
    // Example usage of format! macro with a string literal
    let format_str = "Hello, {}!";
    let args = "world";
    let formatted_string = format!(format_str, args);
    println!("{}", formatted_string);
}
