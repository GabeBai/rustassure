use std::collections::HashSet;

#[derive(Default)]
struct OpngOptions {
    optim_level: i32,
    // other fields...
}

fn opng_rangeset_string_to_bitset(preset: &str) -> HashSet<u32> {
    // Dummy implementation for the sake of example
    HashSet::new()
}

fn opng_init_iteration(
    cmdline_set: HashSet<u32>,
    mask_set: HashSet<u32>,
    preset: &str,
    output_set: &mut HashSet<u32>,
    options: &OpngOptions,
) {
    *output_set = cmdline_set.intersection(&mask_set).cloned().collect();
    if output_set.is_empty() && !cmdline_set.is_empty() {
        panic!("Iteration parameter(s) out of range");
    }
    if output_set.is_empty() || options.optim_level >= 0 {
        let preset_set = opng_rangeset_string_to_bitset(preset);
        *output_set = output_set.union(&preset_set.intersection(&mask_set).cloned().collect()).cloned().collect();
    }
}

fn main() {
    let cmdline_set = HashSet::new();
    let mask_set = HashSet::new();
    let mut output_set = HashSet::new();
    let options = OpngOptions { optim_level: 1 };

    opng_init_iteration(cmdline_set, mask_set, "preset", &mut output_set, &options);
}
