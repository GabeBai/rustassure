

int
csv_fini(struct csv_parser *p, void (*cb1)(void *, size_t, void *), void (*cb2)(int c, void *), void *data)
{
  if (p == NULL)
    return -1;

  /* Finalize parsing.  Needed, for example, when file does not end in a newline */
  int quoted = p->quoted;
  int pstate = p->pstate;
  size_t spaces = p->spaces;
  size_t entry_pos = p->entry_pos;

  if ((pstate == FIELD_BEGUN) && p->quoted && (p->options & CSV_STRICT) && (p->options & CSV_STRICT_FINI)) {
    /* Current field is quoted, no end-quote was seen, and CSV_STRICT_FINI is set */
    p->status = CSV_EPARSE;
    return -1;
  }

  switch (pstate) {
    case FIELD_MIGHT_HAVE_ENDED:
      p->entry_pos -= p->spaces + 1;  /* get rid of spaces and original quote */
      entry_pos = p->entry_pos;
      /*lint -fallthrough */
    case FIELD_NOT_BEGUN:
    case FIELD_BEGUN:
      /* Unnecessary:
      quoted = p->quoted, pstate = p->pstate;
      spaces = p->spaces, entry_pos = p->entry_pos;
      */
      SUBMIT_FIELD(p);
      SUBMIT_ROW(p, -1);
      break;
    case ROW_NOT_BEGUN: /* Already ended properly */
      ;
  }

  /* Reset parser */
  p->spaces = p->quoted = p->entry_pos = p->status = 0;
  p->pstate = ROW_NOT_BEGUN;

  return 0;
}