fn opng_print_fsize_difference(init_size: u64, final_size: u64, show_ratio: bool) {
    let difference: u64;
    let sign: i32;

    if init_size <= final_size {
        sign = 0;
        difference = final_size - init_size;
    } else {
        sign = 1;
        difference = init_size - final_size;
    }

    if difference == 0 {
        println!("no change");
        return;
    }

    if difference == 1 {
        println!("1 byte");
    } else {
        println!("{} bytes", difference);
    }

    if show_ratio && init_size > 0 {
        print!(" = ");
        opng_print_fsize_ratio(difference, init_size);
    }

    println!("{}", if sign == 0 { " increase" } else { " decrease" });
}

// Assuming opng_print_fsize_ratio is defined elsewhere
fn opng_print_fsize_ratio(difference: u64, init_size: u64) {
    // Implement the ratio printing logic here
}
