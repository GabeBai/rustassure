use std::mem;

pub fn deflateCopy(dest: &mut ZStream, source: &ZStream) -> i32 {
#ifdef MAXSEG_64K
    (void)dest;
    (void)source;
    return Z_STREAM_ERROR;
#else
    let ds = dest.state as *mut DeflateState;
    let ss = source.state as *const DeflateState;

    if deflateStateCheck(source).is_err() || dest == Z_NULL {
        return Z_STREAM_ERROR;
    }

    unsafe {
        mem::copy((voidpf)dest, (voidpf)source, mem::size_of::<z_stream>());
    }

    let ds = unsafe { ZALLOC(dest, 1, mem::size_of::<deflate_state>()) as *mut DeflateState };
    if ds.is_null() {
        return Z_MEM_ERROR;
    }
    dest.state = (struct internal_state FAR *) ds;
    unsafe {
        mem::copy((voidpf)ds, (voidpf)ss, mem::size_of::<deflate_state>());
    }
    ds.strm = dest;

    let window_size = ds.w_size * 2 * std::mem::size_of::<Byte>();
    let prev_size = ds.w_size * std::mem::size_of::<Pos>();
    let head_size = ds.hash_size * std::mem::size_of::<Pos>();
    let lit_bufsize = ds.lit_bufsize * LIT_BUFS;

    let window = unsafe { ZALLOC(dest, ds.w_size, 2*std::mem::size_of::<Byte>()) };
    let prev = unsafe { ZALLOC(dest, ds.w_size, std::mem::size_of::<Pos>())};
    let head = unsafe { ZALLOC(dest, ds.hash_size, std::mem::size_of::<Pos>())};
    let pending_buf = unsafe { ZALLOC(dest, ds.lit_bufsize, LIT_BUFS) };

    if window.is_null() || prev.is_null() || head.is_null() || pending_buf.is_null() {
        deflateEnd (dest);
        return Z_MEM_ERROR;
    }

    unsafe {
        mem::copy((voidpf)ds.window, (voidpf)ss.window, window_size);
        mem::copy((voidpf)ds.prev, (voidpf)ss.prev, prev_size);
        mem::copy((voidpf)ds.head, (voidpf)ss.head, head_size);
        mem::copy(ds.pending_buf, ss.pending_buf, lit_bufsize);
    }

    ds.pending_out = ds.pending_buf + (ss.pending_out - ss.pending_buf);
#ifdef LIT_MEM
    ds.d_buf = (ushf *)(ds.pending_buf + (ds.lit_bufsize << 1));
    ds.l_buf = ds.pending_buf + (ds.lit_bufsize << 2);
#else
    ds.sym_buf = ds.pending_buf + ds.lit_bufsize;
#endif

    ds.l_desc.dyn_tree = ds.dyn_ltree;
    ds.d_desc.dyn_tree = ds.dyn_dtree;
    ds.bl_desc.dyn_tree = ds.bl_tree;

    return Z_OK;
#endif /* MAXSEG_64K */
}