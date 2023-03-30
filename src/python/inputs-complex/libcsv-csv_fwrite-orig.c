

int
csv_fwrite (FILE *fp, const void *src, size_t src_size)
{
  return csv_fwrite2(fp, src, src_size, CSV_QUOTE);
}