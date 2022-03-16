/*
xserver _ e7df42ab68e30588a5e32ed543b0711821daf009
https://github.com/dlespiau/xserver/commit/e7df42ab68e30588a5e32ed543b0711821daf009

This program is from a bug in Xserver.

test/xi2: Fix infinite loop in test_convert_XITouchOwnershipEvent
The touchid test was using a loop like:

	for(i = 1; i < 0xffffffff; i <<= 1)

When 'i' is a 32-bit variable, this infinite loops as it goes from
0x80000000 to 0. 'i' is declared as 'long', which is 32-bit in 32-bit mode.

Signed-off-by: Keith Packard <keithp@keithp.com>



*/
int main()
{
    long i;
    for( i = 1 ; i <= 0xFFFFFFFF ; i <<= 1 )
    {
        //loop
    }
    return 0;
}
