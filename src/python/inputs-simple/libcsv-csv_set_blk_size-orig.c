
void
csv_set_blk_size(struct csv_parser *p, size_t size)
{
  /* Set the block size used to increment buffer size */
  if (p) p->blk_size = size;
}