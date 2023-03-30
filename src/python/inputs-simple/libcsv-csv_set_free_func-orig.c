 
void
csv_set_free_func(struct csv_parser *p, void (*f)(void *))
{
  /* Set the free function used to free the buffer */
  if (p && f) p->free_func = f;
}