gzFile ZEXPORT gzopen(const char *path, const char *mode) {
    return gz_open(path, -1, mode);
}
