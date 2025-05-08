use std::os::raw::c_char;

type UsrPrintf = extern "C" fn(*const c_char, ...);
type UsrPrintCntrl = extern "C" fn(i32);

static mut USR_PRINTF: Option<UsrPrintf> = None;
static mut USR_PRINT_CNTRL: Option<UsrPrintCntrl> = None;

fn opng_print_error(msg: *const c_char) {
    unsafe {
        if let Some(usr_print_cntrl) = USR_PRINT_CNTRL {
            usr_print_cntrl('\x0b' as i32); // ASCII vertical tab
        }

        if let Some(usr_printf) = USR_PRINTF {
            let msg_str = std::ffi::CStr::from_ptr(msg).to_string_lossy();
            println!("Error: {}", msg_str);
        }
    }
}
