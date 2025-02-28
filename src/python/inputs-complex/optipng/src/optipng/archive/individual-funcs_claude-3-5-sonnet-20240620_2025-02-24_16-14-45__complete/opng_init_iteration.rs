use std::ffi::CStr;

fn opng_init_iteration(cmdline_set: u32, mask_set: u32, preset: *const i8, output_set: &mut u32) {
    let preset_set: u32;
    *output_set = cmdline_set & mask_set;
    if *output_set == 0 && cmdline_set != 0 {
        panic!("Iteration parameter(s) out of range");
    }
    if *output_set == 0 || unsafe { options.optim_level >= 0 } {
        let preset_str = unsafe { CStr::from_ptr(preset) }.to_str().unwrap();
        preset_set = opng_rangeset_string_to_bitset(preset_str, None);
        *output_set |= preset_set & mask_set;
    }
}