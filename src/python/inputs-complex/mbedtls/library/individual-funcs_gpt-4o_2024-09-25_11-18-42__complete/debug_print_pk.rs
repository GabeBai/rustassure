use std::ffi::CString;
use std::ptr;
use std::fmt::Write;

#[derive(PartialEq)]
enum MbedtlsPkDebugType {
    MBEDTLS_PK_DEBUG_NONE = 0,
    MBEDTLS_PK_DEBUG_MPI,
    MBEDTLS_PK_DEBUG_ECP,
}

struct MbedtlsPkDebugItem {
    type_: MbedtlsPkDebugType,
    name: *const i8,
    value: *mut std::ffi::c_void,
}

struct MbedtlsPkContext {
    // Assuming the structure of mbedtls_pk_context
}

struct MbedtlsSslContext {
    // Assuming the structure of mbedtls_ssl_context
}

extern "C" {
    fn mbedtls_pk_debug(ctx: *const MbedtlsPkContext, items: *mut MbedtlsPkDebugItem) -> i32;
    fn mbedtls_debug_print_mpi(ssl: *const MbedtlsSslContext, level: i32, file: *const i8, line: i32, text: *const i8, X: *const std::ffi::c_void);
    fn mbedtls_debug_print_ecp(ssl: *const MbedtlsSslContext, level: i32, file: *const i8, line: i32, text: *const i8, X: *const std::ffi::c_void);
    fn debug_send_line(ssl: *const MbedtlsSslContext, level: i32, file: *const i8, line: i32, text: *const i8);
}

fn debug_print_pk(ssl: &MbedtlsSslContext, level: i32, file: &str, line: i32, text: &str, pk: &MbedtlsPkContext) {
    let mut items: [MbedtlsPkDebugItem; 3] = unsafe { std::mem::zeroed() };
    let file_cstr = CString::new(file).unwrap();
    let text_cstr = CString::new(text).unwrap();

    unsafe {
        if mbedtls_pk_debug(pk, items.as_mut_ptr()) != 0 {
            debug_send_line(ssl, level, file_cstr.as_ptr(), line, CString::new("invalid PK context\n").unwrap().as_ptr());
            return;
        }
    }

    for item in &items {
        if item.type_ == MbedtlsPkDebugType::MBEDTLS_PK_DEBUG_NONE {
            return;
        }

        let mut name = String::with_capacity(16);
        write!(&mut name, "{}{}", text, unsafe { CString::from_raw(item.name as *mut i8).to_str().unwrap() }).unwrap();
        name.truncate(15);

        let name_cstr = CString::new(name).unwrap();

        unsafe {
            match item.type_ {
                MbedtlsPkDebugType::MBEDTLS_PK_DEBUG_MPI => {
                    mbedtls_debug_print_mpi(ssl, level, file_cstr.as_ptr(), line, name_cstr.as_ptr(), item.value);
                }
                MbedtlsPkDebugType::MBEDTLS_PK_DEBUG_ECP => {
                    mbedtls_debug_print_ecp(ssl, level, file_cstr.as_ptr(), line, name_cstr.as_ptr(), item.value);
                }
                _ => {
                    debug_send_line(ssl, level, file_cstr.as_ptr(), line, CString::new("should not happen\n").unwrap().as_ptr());
                }
            }
        }
    }
}
