use std::mem;

struct __sigset_t {
    __val: [u64; 16],
}

struct timeval {
    tv_sec: i64,
    tv_usec: i64,
}

struct timespec {
    tv_sec: i64,
    tv_nsec: i64,
}

struct fd_set {
    __fds_bits: [i32; 32],
}

union __atomic_wide_counter {
    __value64: u64,
    __value32: __atomic_wide_counter__value32,
}

struct __atomic_wide_counter__value32 {
    __low: u32,
    __high: u32,
}

struct __pthread_internal_list {
    __prev: *mut __pthread_internal_list,
    __next: *mut __pthread_internal_list,
}

struct __pthread_mutex_s {
    __lock: i32,
    __count: u32,
    __owner: i32,
    __nusers: u32,
    __kind: i32,
    __spins: i16,
    __elision: i16,
    __list: __pthread_list_t,
}

struct __pthread_rwlock_arch_t {
    __readers: u32,
    __writers: u32,
    __wrphase_futex: u32,
    __writers_futex: u32,
    __pad3: u32,
    __pad4: u32,
    __cur_writer: i32,
    __shared: i32,
    __rwelision: i8,
    __pad1: [u8; 7],
    __pad2: u64,
    __flags: u32,
}

struct __pthread_cond_s {
    __wseq: __atomic_wide_counter,
    __g1_start: __atomic_wide_counter,
    __g_refs: [u32; 2],
    __g_size: [u32; 2],
    __g1_orig_size: u32,
    __wrefs: u32,
    __g_signals: [u32; 2],
}

union pthread_attr_t {
    __size: [i8; 56],
    __align: i64,
}

struct stat {
    st_dev: u64,
    st_ino: u64,
    st_nlink: u64,
    st_mode: u32,
    st_uid: u32,
    st_gid: u32,
    __pad0: i32,
    st_rdev: u64,
    st_size: i64,
    st_blksize: i64,
    st_blocks: i64,
    st_atim: timespec,
    st_mtim: timespec,
    st_ctim: timespec,
    __glibc_reserved: [i64; 3],
}

struct flock {
    l_type: i16,
    l_whence: i16,
    l_start: i64,
    l_len: i64,
    l_pid: i32,
}

struct random_data {
    fptr: *mut i32,
    rptr: *mut i32,
    state: *mut i32,
    rand_type: i32,
    rand_deg: i32,
    rand_sep: i32,
    end_ptr: *mut i32,
}

struct drand48_data {
    __x: [u16; 3],
    __old_x: [u16; 3],
    __c: u16,
    __init: u16,
    __a: u64,
}

struct UT_hash_bucket {
    hh_head: *mut UT_hash_handle,
    count: u32,
    expand_mult: u32,
}

struct UT_hash_table {
    buckets: *mut UT_hash_bucket,
    num_buckets: u32,
    log2_num_buckets: u32,
    num_items: u32,
    tail: *mut UT_hash_handle,
    hho: ptrdiff_t,
    ideal_chain_maxlen: u32,
    nonideal_items: u32,
    ineff_expands: u32,
    noexpand: u32,
    signature: u32,
}

struct UT_hash_handle {
    tbl: *mut UT_hash_table,
    prev: *mut std::ffi::c_void,
    next: *mut std::ffi::c_void,
    hh_prev: *mut UT_hash_handle,
    hh_next: *mut UT_hash_handle,
    key: *const std::ffi::c_void,
    keylen: u32,
    hashv: u32,
}

fn hash_chain_len_histogram(tbl: &UT_hash_table) {
    let mut bkt_hist: [u32; 6] = [0; 6];
    let pct = 100.0 / tbl.num_buckets as f64;
    for i in 0..tbl.num_buckets {
        let count = tbl.buckets[i as usize].count;
        if count == 0 {
            bkt_hist[0] += 1;
        } else if count < 5 {
            bkt_hist[1] += 1;
        } else if count < 10 {
            bkt_hist[2] += 1;
        } else if count < 20 {
            bkt_hist[3] += 1;
        } else if count < 100 {
            bkt_hist[4] += 1;
        } else {
            bkt_hist[5] += 1;
        }
    }
    eprintln!("Buckets with     0 items: {:.1}%", bkt_hist[0] as f64 * pct);
    eprintln!("Buckets with <   5 items: {:.1}%", bkt_hist[1] as f64 * pct);
    eprintln!("Buckets with <  10 items: {:.1}%", bkt_hist[2] as f64 * pct);
    eprintln!("Buckets with <  20 items: {:.1}%", bkt_hist[3] as f64 * pct);
    eprintln!("Buckets with < 100 items: {:.1}%", bkt_hist[4] as f64 * pct);
    eprintln!("Buckets with > 100 items: {:.1}%", bkt_hist[5] as f64 * pct);
}
