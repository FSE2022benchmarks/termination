/*
brltty _ 5bec3fff0bac50f4b4d4d3b02e70161a2bf38d0f
https://github.com/neverware-mirrors/brltty/commit/5bec3fff0bac50f4b4d4d3b02e70161a2bf38d0f

This program is from a bug in brltty.

This program will go into an infinite loop if wc is negative


*/
int main()
{
    int wc = __VERIFIER_nondet_int();
    do{
        //loop;
    }while( wc >>= 6 );
    return 0;
}
