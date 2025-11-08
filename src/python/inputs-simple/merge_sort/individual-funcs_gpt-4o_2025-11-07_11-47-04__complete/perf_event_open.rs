
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

use std::os::raw::{c_int, c_long, c_ulong};
use std::ffi::c_void;
use std::arch::asm;

pub fn perf_event_open(
    hw_event: &PerfEventAttr,
    pid: c_int,
    cpu: c_int,
    group_fd: c_int,
    flags: c_ulong,
) -> c_long {
    let ret: c_long;
    unsafe {
        asm!(
            "syscall",
            in("rax") SYS_perf_event_open,
            in("rdi") hw_event as *const PerfEventAttr as *const c_void,
            in("rsi") pid,
            in("rdx") cpu,
            in("r10") group_fd,
            in("r8") flags,
            lateout("rax") ret,
        );
    }
    ret
}
