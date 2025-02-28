use std::ffi::CStr;

fn main() {
    let msg_intro = "OptiPNG version 0.7.6\nCopyright (C) 2001-2016 Cosmin Truta and the Contributing Authors.\n";
    let msg_license = "This program is open-source software. See LICENSE for more details.\n\nPortions of this software are based in part on the work of:\n  Jean-loup Gailly and Mark Adler (zlib)\n  Glenn Randers-Pehrson and the PNG Development Group (libpng)\n  Miyasaka Masaru (BMP support)\n  David Koblas (GIF support)\n";
    let msg_help_synopsis = "Synopsis:\n    optipng [options] files ...\nFiles:\n    Image files of type: PNG, BMP, GIF, PNM or TIFF\n";
    let msg_help_basic_options = "Basic options:\n    -?, -h, -help\tshow the extended help\n    -o <level>\t\toptimization level (0-7)\t\t[default: 2]\n    -v\t\t\trun in verbose mode / show copyright and version info\n";
    let msg_help_options = "Basic options:\n    -?, -h, -help\tshow this help\n    -o <level>\t\toptimization level (0-7)\t\t[default: 2]\n    -v\t\t\trun in verbose mode / show copyright and version info\nGeneral options:\n    -backup, -keep\tkeep a backup of the modified files\n    -clobber\t\toverwrite existing files\n    -fix\t\tenable error recovery\n    -force\t\tenforce writing of a new output file\n    -preserve\t\tpreserve file attributes if possible\n    -quiet, -silent\trun in quiet mode\n    -simulate\t\trun in simulation mode\n    -out <file>\t\twrite output file to <file>\n    -dir <directory>\twrite output file(s) to <directory>\n    -log <file>\t\tlog messages to <file>\n    --\t\t\tstop option switch parsing\nOptimization options:\n    -f <filters>\tPNG delta filters (0-5)\t\t\t[default: 0,5]\n    -i <type>\t\tPNG interlace type (0-1)\n    -zc <levels>\tzlib compression levels (1-9)\t\t[default: 9]\n    -zm <levels>\tzlib memory levels (1-9)\t\t[default: 8]\n    -zs <strategies>\tzlib compression strategies (0-3)\t[default: 0-3]\n    -zw <size>\t\tzlib window size (256,512,1k,2k,4k,8k,16k,32k)\n    -full\t\tproduce a full report on IDAT (might reduce speed)\n    -nb\t\t\tno bit depth reduction\n    -nc\t\t\tno color type reduction\n    -np\t\t\tno palette reduction\n    -nx\t\t\tno reductions\n    -nz\t\t\tno IDAT recoding\nEditing options:\n    -snip\t\tcut one image out of multi-image or animation files\n    -strip <objects>\tstrip metadata objects (e.g. \"all\")\nOptimization levels:\n    -o0\t\t<=>\t-o1 -nx -nz\t\t\t\t(0 or 1 trials)\n    -o1\t\t<=>\t-zc9 -zm8 -zs0 -f0\t\t\t(1 trial)\n    \t\t(or...)\t-zc9 -zm8 -zs1 -f5\t\t\t(1 trial)\n    -o2\t\t<=>\t-zc9 -zm8 -zs0-3 -f0,5\t\t\t(8 trials)\n    -o3\t\t<=>\t-zc9 -zm8-9 -zs0-3 -f0,5\t\t(16 trials)\n    -o4\t\t<=>\t-zc9 -zm8 -zs0-3 -f0-5\t\t\t(24 trials)\n    -o5\t\t<=>\t-zc9 -zm8-9 -zs0-3 -f0-5\t\t(48 trials)\n    -o6\t\t<=>\t-zc1-9 -zm8 -zs0-3 -f0-5\t\t(120 trials)\n    -o7\t\t<=>\t-zc1-9 -zm8-9 -zs0-3 -f0-5\t\t(240 trials)\n    -o7 -zm1-9\t<=>\t-zc1-9 -zm1-9 -zs0-3 -f0-5\t\t(1080 trials)\nNotes:\n    The combination for -o1 is chosen heuristically.\n    Exhaustive combinations such as \"-o7 -zm1-9\" are not generally recommended.\n";
    let msg_help_examples = "Examples:\n    optipng file.png\t\t\t\t\t\t(default speed)\n    optipng -o5 file.png\t\t\t\t\t(slow)\n    optipng -o7 file.png\t\t\t\t\t(very slow)\n";
    let msg_help_more = "Type \"optipng -h\" for extended help.\n";

    let operation = OP_RUN;
    let local_options = LocalOptions { help: 0, version: 0 };

    let result = match operation {
        OP_RUN => process_files(std::env::args().len() as i32, std::env::args().collect::<Vec<String>>().as_mut_ptr() as *mut *mut i8),
        OP_SHOW_HELP => {
            if local_options.help != 0 {
                println!("{}{}{}", msg_help_synopsis, msg_help_options, msg_help_examples);
            } else {
                println!("{}{}{}{}", msg_help_synopsis, msg_help_basic_options, msg_help_examples, msg_help_more);
            }
            0
        },
        OP_SHOW_VERSION => {
            println!("{}", msg_license);
            println!("Using libpng version {} and zlib version {}",
                     unsafe { CStr::from_ptr(png_get_libpng_ver(std::ptr::null())).to_str().unwrap() },
                     unsafe { CStr::from_ptr(zlibVersion()).to_str().unwrap() });
            0
        },
        _ => -1,
    };

    std::process::exit(result);
}

#[derive(Default)]
struct LocalOptions {
    help: i32,
    version: i32,
}

enum Operation {
    OP_RUN,
    OP_SHOW_HELP,
    OP_SHOW_VERSION,
}

use Operation::*;

extern "C" {
    fn png_get_libpng_ver(png_ptr: *const std::ffi::c_void) -> *const i8;
    fn zlibVersion() -> *const i8;
    fn process_files(argc: i32, argv: *mut *mut i8) -> i32;
}