use std::fmt::Write;

fn app_printf(fmt_str: &str, args: &[&str]) {
    let mut output = String::new();
    write!(&mut output, "{}", fmt_str).expect("Formatting failed");
    for arg in args {
        write!(&mut output, " {}", arg).expect("Formatting failed");
    }
    println!("{}", output);
}

struct OpngUi<'a> {
    printf_fn: fn(&'a str, &[&'a str]),
    print_cntrl_fn: fn(i32),
    progress_fn: fn(u64, u64),
    panic_fn: fn(&'a str),
}

fn app_print_cntrl(cntrl_code: i32) {
    // Implement your control code handling here
}

fn app_progress(current_step: u64, total_steps: u64) {
    // Implement your progress handling here
}

fn panic(msg: &str) {
    eprintln!("Panic: {}", msg);
}

fn process_files(argc: usize, argv: Vec<&str>) -> i32 {
    let mut result = 0;
    let ui = OpngUi {
        printf_fn: app_printf,
        print_cntrl_fn: app_print_cntrl,
        progress_fn: app_progress,
        panic_fn: panic,
    };

    if opng_initialize(&options, &ui) != 0 {
        panic("Can't initialize optimization engine");
    }

    for i in 1..argc {
        if argv[i].is_empty() {
            continue;
        }
        if opng_optimize(argv[i]) != 0 {
            result = 1;
        }
    }

    if opng_finalize() != 0 {
        panic("Can't finalize optimization engine");
    }

    result
}
