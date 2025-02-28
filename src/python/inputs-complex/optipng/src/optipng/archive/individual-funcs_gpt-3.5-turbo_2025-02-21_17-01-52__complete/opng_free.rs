use std::mem::ManuallyDrop;

#[repr(C)]
union Wait {
    w_status: i32,
    w_T: WaitT,
    w_S: ManuallyDrop<WaitS>,
}

#[repr(C)]
struct WaitT {
    w_Termsig: u32,
    w_Coredump: u32,
    w_Retcode: u32,
    w_Filler: u32,
}

#[repr(C)]
struct WaitS {
    w_Stopval: u32,
    w_Stopsig: u32,
    w_Filler: u32,
}

fn main() {
    // Example usage
    let wait = Wait { w_S: ManuallyDrop::new(WaitS { w_Stopval: 0, w_Stopsig: 0, w_Filler: 0 }) };

    // Manually drop the w_S field when it is no longer needed
    unsafe {
        ManuallyDrop::drop(&mut wait.w_S);
    }
}
