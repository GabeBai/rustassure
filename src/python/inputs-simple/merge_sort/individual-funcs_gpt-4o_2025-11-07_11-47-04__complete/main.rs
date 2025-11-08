
fn __fswahb32(val: u32) -> u32 {
    ((val & 0x00ff00ff) << 8) | ((val & 0xff00ff00) >> 8)
}

fn merge(arr: &mut [i32], l: usize, m: usize, r: usize) {
    let n1 = m - l + 1;
    let n2 = r - m;

    let mut left = Vec::with_capacity(n1);
    let mut right = Vec::with_capacity(n2);

    for i in 0..n1 {
        left.push(arr[l + i]);
    }
    for j in 0..n2 {
        right.push(arr[m + 1 + j]);
    }

    let (mut i, mut j, mut k) = (0, 0, l);

    while i < n1 && j < n2 {
        if left[i] <= right[j] {
            arr[k] = left[i];
            i += 1;
        } else {
            arr[k] = right[j];
            j += 1;
        }
        k += 1;
    }

    while i < n1 {
        arr[k] = left[i];
        i += 1;
        k += 1;
    }

    while j < n2 {
        arr[k] = right[j];
        j += 1;
        k += 1;
    }
}

fn __le32_to_cpup(p: &u32) -> u32 {
    *p
}

fn __bswap_32(x: u32) -> u32 {
    ((x & 0x000000FF) << 24) |
    ((x & 0x0000FF00) << 8)  |
    ((x & 0x00FF0000) >> 8)  |
    ((x & 0xFF000000) >> 24)
}

fn __arch_swab64(val: u64) -> u64 {
    val.swap_bytes()
}

fn __cpu_to_le32p(arr: &mut [i32], l: usize, m: usize, r: usize) {
    let n1 = m - l + 1;
    let n2 = r - m;

    let mut left = Vec::with_capacity(n1);
    let mut right = Vec::with_capacity(n2);

    for i in 0..n1 {
        left.push(arr[l + i]);
    }
    for j in 0..n2 {
        right.push(arr[m + 1 + j]);
    }

    let (mut i, mut j, mut k) = (0, 0, l);

    while i < n1 && j < n2 {
        if left[i] <= right[j] {
            arr[k] = left[i];
            i += 1;
        } else {
            arr[k] = right[j];
            j += 1;
        }
        k += 1;
    }

    while i < n1 {
        arr[k] = left[i];
        i += 1;
        k += 1;
    }

    while j < n2 {
        arr[k] = right[j];
        j += 1;
        k += 1;
    }
}

fn merge_sort(arr: &mut [i32]) {
    let len = arr.len();
    if len < 2 {
        return;
    }
    let mid = len / 2;
    merge_sort(&mut arr[..mid]);
    merge_sort(&mut arr[mid..]);
    let mut left = arr[..mid].to_vec();
    let mut right = arr[mid..].to_vec();
    merge_slices(&mut left, &mut right, arr);
}

fn merge_slices(left: &mut Vec<i32>, right: &mut Vec<i32>, arr: &mut [i32]) {
    let mut i = 0;
    let mut j = 0;
    let mut k = 0;
    while i < left.len() && j < right.len() {
        if left[i] <= right[j] {
            arr[k] = left[i];
            i += 1;
        } else {
            arr[k] = right[j];
            j += 1;
        }
        k += 1;
    }
    while i < left.len() {
        arr[k] = left[i];
        i += 1;
        k += 1;
    }
    while j < right.len() {
        arr[k] = right[j];
        j += 1;
        k += 1;
    }
}

fn __uint16_identity(arr: &mut [i32]) {
    let len = arr.len();
    if len < 2 {
        return;
    }
    let mid = len / 2;
    __uint16_identity(&mut arr[..mid]);
    __uint16_identity(&mut arr[mid..]);
    let mut left = arr[..mid].to_vec();
    let mut right = arr[mid..].to_vec();
    merge_parts(&mut left, &mut right, arr);
}

fn merge_parts(left: &mut Vec<i32>, right: &mut Vec<i32>, arr: &mut [i32]) {
    let mut i = 0;
    let mut j = 0;
    let mut k = 0;
    while i < left.len() && j < right.len() {
        if left[i] <= right[j] {
            arr[k] = left[i];
            i += 1;
        } else {
            arr[k] = right[j];
            j += 1;
        }
        k += 1;
    }
    while i < left.len() {
        arr[k] = left[i];
        i += 1;
        k += 1;
    }
    while j < right.len() {
        arr[k] = right[j];
        j += 1;
        k += 1;
    }
}

fn __bswap_16(x: u16) -> u16 {
    (x >> 8) | (x << 8)
}

#[repr(C)]
pub struct PerfEventAttr {
    pub type_: u32,
    pub size: u32,
    pub config: u64,
    pub sample_type: u64,
    pub read_format: u64,
    pub disabled: u32,
    pub exclude_kernel: u32,
    pub exclude_hv: u32,
    // other fields...
}

pub fn configure_event(pe: &mut PerfEventAttr, type_: u32, config: u64) {
    *pe = PerfEventAttr {
        type_,
        size: std::mem::size_of::<PerfEventAttr>() as u32,
        config,
        sample_type: 0,
        read_format: (1 << 3) | (1 << 2), // PERF_FORMAT_GROUP | PERF_FORMAT_ID
        disabled: 1,
        exclude_kernel: 1,
        exclude_hv: 1,
        // other fields initialized to zero
    };
}

fn __le64_to_cpup() {
    // Function implementation here
}

fn __arch_swab32(val: u32) -> u32 {
    val.swap_bytes()
}

fn __fswab16(val: u16) -> u16 {
    ((val & 0x00ff) << 8) | ((val & 0xff00) >> 8)
}

use std::time::Duration;

fn diff_timespec(time1: &Duration, time0: &Duration) -> f64 {
    let secs_diff = time1.as_secs() as f64 - time0.as_secs() as f64;
    let nanos_diff = time1.subsec_nanos() as f64 - time0.subsec_nanos() as f64;
    secs_diff + nanos_diff / 1_000_000_000.0
}

fn __bswap_64(x: u64) -> u64 {
    ((x & 0x00000000000000FF) << 56) |
    ((x & 0x000000000000FF00) << 40) |
    ((x & 0x0000000000FF0000) << 24) |
    ((x & 0x00000000FF000000) << 8)  |
    ((x & 0x000000FF00000000) >> 8)  |
    ((x & 0x0000FF0000000000) >> 24) |
    ((x & 0x00FF000000000000) >> 40) |
    ((x & 0xFF00000000000000) >> 56)
}

fn __uint64_identity(arr: &mut [i32]) {
    if arr.len() > 1 {
        let mid = arr.len() / 2;
        let mut left = arr[..mid].to_vec();
        let mut right = arr[mid..].to_vec();

        __uint64_identity(&mut left);
        __uint64_identity(&mut right);

        let mut i = 0;
        let mut j = 0;
        let mut k = 0;

        while i < left.len() && j < right.len() {
            if left[i] < right[j] {
                arr[k] = left[i];
                i += 1;
            } else {
                arr[k] = right[j];
                j += 1;
            }
            k += 1;
        }

        while i < left.len() {
            arr[k] = left[i];
            i += 1;
            k += 1;
        }

        while j < right.len() {
            arr[k] = right[j];
            j += 1;
            k += 1;
        }
    }
}

fn merge_arrays(arr: &mut [i32], left: usize, mid: usize, right: usize) {
    let n1 = mid - left + 1;
    let n2 = right - mid;
    let mut left_arr = Vec::with_capacity(n1);
    let mut right_arr = Vec::with_capacity(n2);

    for i in 0..n1 {
        left_arr.push(arr[left + i]);
    }
    for j in 0..n2 {
        right_arr.push(arr[mid + 1 + j]);
    }

    let (mut i, mut j, mut k) = (0, 0, left);

    while i < n1 && j < n2 {
        if left_arr[i] <= right_arr[j] {
            arr[k] = left_arr[i];
            i += 1;
        } else {
            arr[k] = right_arr[j];
            j += 1;
        }
        k += 1;
    }

    while i < n1 {
        arr[k] = left_arr[i];
        i += 1;
        k += 1;
    }

    while j < n2 {
        arr[k] = right_arr[j];
        j += 1;
        k += 1;
    }
}

fn __uint32_identity(arr: &mut [i32], l: usize, m: usize, r: usize) {
    let n1 = m - l + 1;
    let n2 = r - m;

    let mut left = Vec::with_capacity(n1);
    let mut right = Vec::with_capacity(n2);

    for i in 0..n1 {
        left.push(arr[l + i]);
    }
    for j in 0..n2 {
        right.push(arr[m + 1 + j]);
    }

    let (mut i, mut j, mut k) = (0, 0, l);

    while i < n1 && j < n2 {
        if left[i] <= right[j] {
            arr[k] = left[i];
            i += 1;
        } else {
            arr[k] = right[j];
            j += 1;
        }
        k += 1;
    }

    while i < n1 {
        arr[k] = left[i];
        i += 1;
        k += 1;
    }

    while j < n2 {
        arr[k] = right[j];
        j += 1;
        k += 1;
    }
}

fn __le16_to_cpup(arr: &mut [i32]) {
    let len = arr.len();
    if len < 2 {
        return;
    }
    let mid = len / 2;
    __le16_to_cpup(&mut arr[..mid]);
    __le16_to_cpup(&mut arr[mid..]);
    let mut left = arr[..mid].to_vec();
    let mut right = arr[mid..].to_vec();
    let mut i = 0;
    let mut j = 0;
    let mut k = 0;
    while i < left.len() && j < right.len() {
        if left[i] <= right[j] {
            arr[k] = left[i];
            i += 1;
        } else {
            arr[k] = right[j];
            j += 1;
        }
        k += 1;
    }
    while i < left.len() {
        arr[k] = left[i];
        i += 1;
        k += 1;
    }
    while j < right.len() {
        arr[k] = right[j];
        j += 1;
        k += 1;
    }
}

fn __fswahw32(val: u32) -> u32 {
    ((val & 0x0000ffff) << 16) | ((val & 0xffff0000) >> 16)
}

fn __swahb32p(p: &u32) -> u32 {
    if cfg!(target_endian = "little") {
        p.to_be()
    } else {
        p.to_le()
    }
}

fn __fswab64(val: u64) -> u64 {
    __arch_swab64(val)
}

fn __fswab32(val: u32) -> u32 {
    __arch_swab32(val)
}

#[inline(always)]
fn __swab16p(p: &u16) -> u16 {
    if cfg!(target_endian = "little") {
        p.to_be()
    } else {
        p.to_le()
    }
}

fn merge_sort_main(arr: &mut [i32]) {
    fn merge_sort_recursive(arr: &mut [i32], left: usize, right: usize) {
        if left < right {
            let mid = left + (right - left) / 2;
            merge_sort_recursive(arr, left, mid);
            merge_sort_recursive(arr, mid + 1, right);
            merge_arrays(arr, left, mid, right);
        }
    }
    if !arr.is_empty() {
        merge_sort_recursive(arr, 0, arr.len() - 1);
    }
}

fn __swahw32p(p: &u32) -> u32 {
    if cfg!(target_endian = "little") {
        p.swap_bytes()
    } else {
        __fswahw32(*p)
    }
}

fn __swahb32s(p: &mut u32) {
    *p = __swahb32p(p);
}

#[inline(always)]
fn __swab(y: u64) -> u64 {
    if cfg!(target_endian = "little") {
        y.swap_bytes()
    } else {
        __fswab64(y)
    }
}

#[inline(always)]
fn __swab64p(p: &u64) -> u64 {
    if cfg!(target_endian = "little") {
        p.to_be()
    } else {
        *p
    }
}

#[inline(always)]
fn __swab32p(p: &u32) -> u32 {
    if cfg!(target_endian = "little") {
        p.to_be()
    } else {
        p.to_le()
    }
}

fn __swab16s(p: &mut u16) {
    *p = __swab16p(p);
}

#[inline(always)]
fn __be16_to_cpup(p: &u16) -> u16 {
    __swab16p(p)
}

#[inline(always)]
fn __cpu_to_be16p(p: &u16) -> u16 {
    __swab16p(p)
}

use std::ffi::CString;
use std::io::{self, Read};
use std::os::unix::io::RawFd;
use std::ptr;
use std::time::SystemTime;
use rand::Rng;
use libc::{c_int, c_ulong, close, ioctl, read};

#[repr(C)]
struct ReadFormat {
    nr: u64,
    values: [Value; 5],
}

#[repr(C)]
struct Value {
    value: u64,
    id: u64,
}

fn main() -> c_int {
    let args: Vec<String> = std::env::args().collect();
    if args.len() < 2 || args.len() > 3 {
        println!("Usage: {} <array_size> [--perf]", args[0]);
        println!("  --perf: Enable performance event monitoring");
        return 1;
    }

    let size: i32 = args[1].parse().unwrap_or(0);
    if size <= 0 {
        println!("Error: array size must be positive integers.");
        return 1;
    }

    let enable_perf = args.len() == 3 && args[2] == "--perf";
    let mut arr = vec![0; size as usize];
    let mut rng = rand::thread_rng();
    for i in 0..size as usize {
        arr[i] = rng.gen();
    }

    let mut fd = [0; 5];
    let mut id = [0; 5];
    let mut pe_val = [0; 5];
    let mut pe = [PerfEventAttr::default(); 5];
    let mut counter_results = ReadFormat { nr: 0, values: [Value { value: 0, id: 0 }; 5] };

    if enable_perf {
        configure_event(&mut pe[0], PERF_TYPE_HARDWARE, PERF_COUNT_HW_CPU_CYCLES);
        configure_event(&mut pe[1], PERF_TYPE_HARDWARE, PERF_COUNT_HW_INSTRUCTIONS);
        configure_event(&mut pe[2], PERF_TYPE_HW_CACHE, (PERF_COUNT_HW_CACHE_L1D | (PERF_COUNT_HW_CACHE_OP_READ << 8) | (PERF_COUNT_HW_CACHE_RESULT_MISS << 16)));
        configure_event(&mut pe[3], PERF_TYPE_HW_CACHE, (PERF_COUNT_HW_CACHE_LL | (PERF_COUNT_HW_CACHE_OP_READ << 8) | (PERF_COUNT_HW_CACHE_RESULT_MISS << 16)));
        configure_event(&mut pe[4], PERF_TYPE_HARDWARE, PERF_COUNT_HW_BRANCH_MISSES);

        fd[0] = perf_event_open(&pe[0], 0, -1, -1, 0);
        unsafe { ioctl(fd[0], libc::_IOR(b'$', 7, std::mem::size_of::<u64>() as c_ulong), &mut id[0]) };

        for i in 1..5 {
            fd[i] = perf_event_open(&pe[i], 0, -1, fd[0], 0);
            unsafe { ioctl(fd[i], libc::_IOR(b'$', 7, std::mem::size_of::<u64>() as c_ulong), &mut id[i]) };
        }

        unsafe {
            ioctl(fd[0], libc::_IO(b'$', 3), PERF_IOC_FLAG_GROUP);
            ioctl(fd[0], libc::_IO(b'$', 0), PERF_IOC_FLAG_GROUP);
        }
    }

    let start_time = SystemTime::now();
    merge_sort_main(&mut arr);
    let end_time = SystemTime::now();

    if enable_perf {
        unsafe {
            ioctl(fd[0], libc::_IO(b'$', 1), PERF_IOC_FLAG_GROUP);
            let n = read(fd[0], &mut counter_results as *mut _ as *mut _, std::mem::size_of::<ReadFormat>());
            if n != std::mem::size_of::<ReadFormat>() as isize {
                io::Error::last_os_error();
            }
        }

        println!("Num events captured: {}", counter_results.nr);
        for i in 0..counter_results.nr as usize {
            for j in 0..5 {
                if counter_results.values[i].id == id[j] {
                    pe_val[j] = counter_results.values[i].value;
                }
            }
        }

        println!("CPU cycles:             {}", pe_val[0]);
        println!("Instructions retired:   {}", pe_val[1]);
        println!("L1 DCache read misses:   {}", pe_val[2]);
        println!("Last level DCache read misses:   {}", pe_val[3]);
        println!("Branch misses:           {}", pe_val[4]);
        println!("IPC (instructions/cycle): {:.2}", pe_val[1] as f64 / pe_val[0] as f64);

        for i in 0..5 {
            unsafe { close(fd[i]) };
        }
    }

    let time_elapsed = end_time.duration_since(start_time).unwrap();
    println!("Time taken to sort the array of size {}: {:?}", size, time_elapsed);
    0
}
