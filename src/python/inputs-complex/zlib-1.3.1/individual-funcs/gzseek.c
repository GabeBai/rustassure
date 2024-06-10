z_off_t ZEXPORT gzseek(gzFile file, z_off_t offset, int whence) {
    z_off64_t ret;

    ret = gzseek64(file, (z_off64_t)offset, whence);
    return ret == (z_off_t)ret ? (z_off_t)ret : -1;
}
