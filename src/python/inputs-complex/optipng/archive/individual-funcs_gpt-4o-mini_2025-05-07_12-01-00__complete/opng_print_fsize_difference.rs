use std::ffi::CString;
use std::os::raw::c_long;

type OsysFsizeT = u64; // Assuming osys_fsize_t is an unsigned long
type UsrPrintfFn = fn(&str);

static mut usr_printf: Option<UsrPrintfFn> = None;

fn opng_print_fsize_ratio(difference: OsysFsizeT, init_size: OsysFsizeT) {
    // Implement the logic for printing the size ratio here
    // For example, you could calculate the ratio and print it
    let ratio = (difference as f64 / init_size as f64) * 100.0;
    unsafe {
        if let Some(printf) = usr_printf {
            printf(&format!("Ratio: {:.2}%", ratio));
        }
    }
}

fn opng_print_fsize_difference(init_size: OsysFsizeT, final_size: OsysFsizeT, show_ratio: bool) {
    let difference: OsysFsizeT;
    let sign: i32;

    if init_size <= final_size {
        sign = 0;
        difference = final_size - init_size;
    } else {
        sign = 1;
        difference = init_size - final_size;
    }

    unsafe {
        if let Some(printf) = usr_printf {
            if difference == 0 {
                printf("no change");
                return;
            }
            if difference == 1 {
                printf("1 byte");
            } else {
                printf(&format!("{} bytes", difference));
            }
            if show_ratio && init_size > 0 {
                printf(" = ");
                opng_print_fsize_ratio(difference, init_size);
            }
            printf(if sign == 0 { " increase" } else { " decrease" });
        }
    }
}

// Example usage
fn main() {
    unsafe {
        usr_printf = Some(|msg| {
            let c_str = CString::new(msg).unwrap();
            // Here you would call the actual printf or similar function
            println!("{}", c_str.to_string_lossy());
        });
    }

    opng_print_fsize_difference(100, 150, true);
}
