typedef int __darwin_ct_rune_t;
int __maskrune(__darwin_ct_rune_t, unsigned long);
inline int
digittoint(int _c)
{
 return (__maskrune(_c, 0x0F));
}
