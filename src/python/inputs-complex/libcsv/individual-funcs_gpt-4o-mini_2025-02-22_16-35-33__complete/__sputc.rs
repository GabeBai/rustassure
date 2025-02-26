use std::mem::ManuallyDrop;
use std::os::raw::{c_int, c_void};

// Define the Siginfo struct (you may need to adjust the fields based on your requirements)
#[repr(C)]
struct Siginfo {
    // Define the fields of Siginfo as per your requirements
}

// Define the union for sigaction
union SigactionU {
    sa_handler: Option<unsafe extern "C" fn(c_int)>,
    sa_sigaction: ManuallyDrop<Option<unsafe extern "C" fn(c_int, *mut Siginfo, *mut c_void)>>,
}

// Define the sigaction struct
#[repr(C)]
struct Sigaction {
    sa_sigaction: SigactionU,
    sa_mask: u64, // Adjust the type based on your requirements
    sa_flags: c_int,
}

// Example usage of the Sigaction struct
fn main() {
    let sigaction = Sigaction {
        sa_sigaction: SigactionU {
            sa_handler: None, // or some valid function pointer
        },
        sa_mask: 0,
        sa_flags: 0,
    };

    // Use sigaction as needed
}
