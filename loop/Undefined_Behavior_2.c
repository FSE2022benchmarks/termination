/*
elfutils _ b00a4fa78779ff0f304fa6cb34d49622679c86d4
https://github.com/anlaneg/elfutils/commit/b00a4fa78779ff0f304fa6cb34d49622679c86d4


This program is from a bug in elfutils.

The problem is this:

  int n = ffs (w);
  w >>= n;

The intent is to shift away up to (and including) the first least
significant bit in w. But w is an unsigned int, so 32 bits. And the
least significant bit could be bit 32 (ffs counts from 1). Unfortunately
a right shift equal to (or larger than) the length in bits of the left
hand operand is undefined behaviour. We expect w to be zero afterwards.
Which would terminate the while loop in the function. But since it is
undefined behaviour anything can happen. In this case, what will actually
happen is that w is unchanged, causing an infinite loop...

gcc -fsanitize=undefined will catch and warn about this when w = 0x80000000


*/
int ffs( unsigned int w )
{
    int i = 1;
    while( w % 2 == 0 )
    {
        i++;
        w = w / 2;
    }
    return i;
}
int main()
{
    unsigned int w = __VERIFIER_nondet_uint();

    while( w != 0 )
    {
        int n = ffs(w);
        w >>= n;
    }
    return 0;
}
