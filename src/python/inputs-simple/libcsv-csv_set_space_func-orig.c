
void
csv_set_space_func(struct csv_parser *p, int (*f)(unsigned char))
{
  /* Set the space function */
  if (p) p->is_space = f;
}