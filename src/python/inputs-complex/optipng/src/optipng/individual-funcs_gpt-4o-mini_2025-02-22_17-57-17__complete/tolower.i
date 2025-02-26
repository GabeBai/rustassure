typedef int __darwin_ct_rune_t;
__darwin_ct_rune_t __tolower(__darwin_ct_rune_t);
inline int
tolower(int _c)
{
        return (__tolower(_c));
}
