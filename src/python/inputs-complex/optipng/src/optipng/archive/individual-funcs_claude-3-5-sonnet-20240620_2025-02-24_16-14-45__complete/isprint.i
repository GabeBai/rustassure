inline int
isprint(int _c)
{
 return (__istype(_c, 0x00040000L));
}
