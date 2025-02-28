typedef int __darwin_ct_rune_t;
int __maskrune(__darwin_ct_rune_t, unsigned long);
inline int
__wcwidth(__darwin_ct_rune_t _c)
{
 unsigned int _x;
 if (_c == 0)
  return (0);
 _x = (unsigned int)__maskrune(_c, 0xe0000000L|0x00040000L);
 if ((_x & 0xe0000000L) != 0)
  return ((_x & 0xe0000000L) >> 30);
 return ((_x & 0x00040000L) != 0 ? 1 : -1);
}
