
void
csv_set_realloc_func(struct csv_parser *p, void *(*f)(void *, size_t))
{
  /* Set the realloc function used to increase buffer size */
  if (p && f) p->realloc_func = f;
}