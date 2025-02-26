typedef unsigned int opng_bitset_t;
enum
{
    OPNG_BITSET_ELT_MIN = 0,
    OPNG_BITSET_ELT_MAX = (int)((sizeof(opng_bitset_t) * 8) - 1)
};
int
opng_bitset_find_first(opng_bitset_t set);
int
opng_bitset_find_first(opng_bitset_t set)
{
    int i;
    for (i = 0; i <= OPNG_BITSET_ELT_MAX; ++i)
    {
        if ((((set) & (1U << (i))) != 0))
            return i;
    }
    return -1;
}
