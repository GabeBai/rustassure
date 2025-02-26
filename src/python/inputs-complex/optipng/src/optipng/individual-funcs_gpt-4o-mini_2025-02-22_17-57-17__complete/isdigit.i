inline int
isdigit(int _c)
{
 return (__isctype(_c, 0x00000400L));
}
