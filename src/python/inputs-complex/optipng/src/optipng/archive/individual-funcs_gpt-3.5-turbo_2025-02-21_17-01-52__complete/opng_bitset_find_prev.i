typedef unsigned int opng_bitset_t;
enum
{
    OPNG_BITSET_ELT_MIN = 0,
    OPNG_BITSET_ELT_MAX = (int)((sizeof(opng_bitset_t) * 8) - 1)
};
int
opng_bitset_find_prev(opng_bitset_t set, int elt);
int
opng_bitset_find_prev(opng_bitset_t set, int elt)
{
    int i;
    for (i = ((elt) < (OPNG_BITSET_ELT_MAX + 1) ? (elt) : (OPNG_BITSET_ELT_MAX + 1)) - 1; i >= 0; --i)
    {
        if ((((set) & (1U << (i))) != 0))
            return i;
    }
    return -1;
}
