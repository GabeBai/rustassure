use std::ptr;
use std::time::{SystemTime, UNIX_EPOCH};
use std::alloc::{alloc_zeroed, dealloc, Layout};
use std::ffi::c_void;
use std::slice;
use std::cmp::Ordering;

#[repr(C)]
struct MbedtlsSslCacheEntry {
    timestamp: u64,
    session: MbedtlsSslSession,
    peer_cert: MbedtlsX509Buf,
    next: *mut MbedtlsSslCacheEntry,
}

#[repr(C)]
struct MbedtlsSslCacheContext {
    chain: *mut MbedtlsSslCacheEntry,
    timeout: i32,
    max_entries: i32,
}

#[repr(C)]
struct MbedtlsSslSession {
    id: [u8; 32],
    id_len: usize,
    peer_cert: *mut MbedtlsX509Crt,
}

#[repr(C)]
struct MbedtlsX509Buf {
    p: *mut u8,
    len: usize,
}

#[repr(C)]
struct MbedtlsX509Crt {
    raw: MbedtlsX509Buf,
}

extern "C" {
    fn mbedtls_ssl_session_copy(dst: *mut MbedtlsSslSession, src: *const MbedtlsSslSession) -> i32;
    fn mbedtls_x509_crt_free(crt: *mut MbedtlsX509Crt);
}

unsafe fn mbedtls_ssl_cache_set(data: *mut c_void, session: *const MbedtlsSslSession) -> i32 {
    let mut ret = 1;
    let t = SystemTime::now().duration_since(UNIX_EPOCH).unwrap().as_secs() as u64;
    let mut oldest = 0;
    let mut old: *mut MbedtlsSslCacheEntry = ptr::null_mut();
    let cache = data as *mut MbedtlsSslCacheContext;
    let mut cur = (*cache).chain;
    let mut prv: *mut MbedtlsSslCacheEntry = ptr::null_mut();
    let mut count = 0;

    while !cur.is_null() {
        count += 1;
        if (*cache).timeout != 0 && (t as i64 - (*cur).timestamp as i64) > (*cache).timeout as i64 {
            (*cur).timestamp = t;
            break;
        }
        if (*session).id[..(*session).id_len] == (*cur).session.id[..(*cur).session.id_len] {
            break;
        }
        if oldest == 0 || (*cur).timestamp < oldest {
            oldest = (*cur).timestamp;
            old = cur;
        }
        prv = cur;
        cur = (*cur).next;
    }

    if cur.is_null() {
        if count >= (*cache).max_entries {
            if old.is_null() {
                ret = 1;
                return ret;
            }
            cur = old;
        } else {
            let layout = Layout::new::<MbedtlsSslCacheEntry>();
            cur = alloc_zeroed(layout) as *mut MbedtlsSslCacheEntry;
            if cur.is_null() {
                ret = 1;
                return ret;
            }
            if prv.is_null() {
                (*cache).chain = cur;
            } else {
                (*prv).next = cur;
            }
        }
        (*cur).timestamp = t;
    }

    if !(*cur).peer_cert.p.is_null() {
        dealloc((*cur).peer_cert.p, Layout::array::<u8>((*cur).peer_cert.len).unwrap());
        ptr::write_bytes(&mut (*cur).peer_cert as *mut MbedtlsX509Buf, 0, 1);
    }

    ret = mbedtls_ssl_session_copy(&mut (*cur).session, session);
    if ret != 0 {
        ret = 1;
        return ret;
    }

    if !(*cur).session.peer_cert.is_null() {
        let len = (*(*cur).session.peer_cert).raw.len;
        let layout = Layout::array::<u8>(len).unwrap();
        (*cur).peer_cert.p = alloc_zeroed(layout);
        if (*cur).peer_cert.p.is_null() {
            ret = 1;
            return ret;
        }
        ptr::copy_nonoverlapping((*(*cur).session.peer_cert).raw.p, (*cur).peer_cert.p, len);
        (*cur).peer_cert.len = len;
        mbedtls_x509_crt_free((*cur).session.peer_cert);
        dealloc((*cur).session.peer_cert as *mut u8, Layout::new::<MbedtlsX509Crt>());
        (*cur).session.peer_cert = ptr::null_mut();
    }

    ret = 0;
    ret
}
