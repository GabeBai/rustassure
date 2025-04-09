   #[macro_use]
   extern crate lazy_static;
   
   use std::sync::Mutex;

   lazy_static! {
       static ref PROCESS: Mutex<OpngProcessStruct> = Mutex::new(OpngProcessStruct {
           status: 0,
           num_iterations: 0,
           in_datastream_offset: 0,
           in_file_size: 0,
           out_file_size: 0,
           in_idat_size: 0,
           out_idat_size: 0,
           best_idat_size: 0,
           max_idat_size: 0,
           in_plte_trns_size: 0,
           out_plte_trns_size: 0,
           reductions: 0,
           compr_level_set: 0,
           mem_level_set: 0,
           strategy_set: 0,
           filter_set: 0,
           best_compr_level: 0,
           best_mem_level: 0,
           best_strategy: 0,
           best_filter: 0,
       });
   }
   
   use std::ptr;
   use std::ffi::CStr;
   use std::os::raw::c_char;

   struct ExceptionContext {
       penv: *mut jmp_buf,
       caught: i32,
       v: Volatile,
   }

   struct Volatile {
       etmp: *const c_char,
   }

   static mut THE_EXCEPTION_CONTEXT: [ExceptionContext; 1] = [ExceptionContext {
       penv: ptr::null_mut(),
       caught: 0,
       v: Volatile { etmp: ptr::null() },
   }];

   fn opng_error(png_ptr: *mut png_struct, msg: *const c_char) {
       unsafe {
           if png_ptr == read_ptr {
               let mut process = PROCESS.lock().unwrap();
               process.status |= INPUT_HAS_ERRORS | OUTPUT_NEEDS_NEW_IDAT;
           }
           loop {
               (*THE_EXCEPTION_CONTEXT[0].penv).longjmp(1);
               THE_EXCEPTION_CONTEXT[0].v.etmp = msg;
           }
       }
   }
   
   struct OpngProcessStruct {
       status: u32,
       num_iterations: i32,
       in_datastream_offset: osys_foffset_t,
       in_file_size: osys_fsize_t,
       out_file_size: osys_fsize_t,
       in_idat_size: osys_fsize_t,
       out_idat_size: osys_fsize_t,
       best_idat_size: osys_fsize_t,
       max_idat_size: osys_fsize_t,
       in_plte_trns_size: png_uint_32,
       out_plte_trns_size: png_uint_32,
       reductions: png_uint_32,
       compr_level_set: opng_bitset_t,
       mem_level_set: opng_bitset_t,
       strategy_set: opng_bitset_t,
       filter_set: opng_bitset_t,
       best_compr_level: i32,
       best_mem_level: i32,
       best_strategy: i32,
       best_filter: i32,
   }
   