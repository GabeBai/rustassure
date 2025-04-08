fn opng_print_warning(msg: &str) {
    // Print a vertical tab character
    print!("\x0b");
    // Print the warning message
    println!("Warning: {}", msg);
}
