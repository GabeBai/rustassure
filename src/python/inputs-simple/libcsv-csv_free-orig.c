
void
csv_free(struct csv_parser *p)
{
  /* Free the entry_buffer of csv_parser object */
  if (p == NULL)
    return;

  if (p->entry_buf && p->free_func)
    p->free_func(p->entry_buf);

  p->entry_buf = NULL;
  p->entry_size = 0;

  return;
}