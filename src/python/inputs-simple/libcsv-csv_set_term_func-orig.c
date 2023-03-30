 
void
csv_set_term_func(struct csv_parser *p, int (*f)(unsigned char))
{
  /* Set the term function */
  if (p) p->is_term = f;
}