fn opng_print_error(msg: &str) {
    // Assuming usr_print_cntrl is defined as a function pointer elsewhere
    // and is properly initialized.
    unsafe {
        usr_print_cntrl(0x0B); // Using the byte value for vertical tab
    }
    // Assuming usr_printf is defined as a function pointer elsewhere
    // and is properly initialized.
    unsafe {
        usr_printf("Error: {}\n", msg);
    }
}
