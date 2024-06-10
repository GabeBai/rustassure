int ZEXPORT uncompress(Bytef *dest, uLongf *destLen, const Bytef *source,
                       uLong sourceLen) {
    return uncompress2(dest, destLen, source, &sourceLen);
}
