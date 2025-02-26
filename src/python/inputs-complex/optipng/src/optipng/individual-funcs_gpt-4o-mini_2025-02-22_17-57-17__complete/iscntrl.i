inline int
iscntrl(int _c)
{
 return (__istype(_c, 0x00000200L));
}
