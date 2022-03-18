/*
coreutils_c44da115063bfea7ef8b2afd1c9d52737e2b7f70_negative_1.c
https://github.com/freshTht/CSC317-CustomLinux-CoreUtils/commit/c44da115063bfea7ef8b2afd1c9d52737e2b7f70

This program is from a bug in coreutiles.
This program includes shift overflow : a1 << 31 and bit operation.


 Categorization: Incorrect bit computation
 Property of Termination in Reality: TRUE

*/
int main()
{
    int a0 = __VERIFIER_nondet_int();
    int a1 = __VERIFIER_nondet_int();
    if( ( a0 | a1 ) == 0 )
        return 0;
    while( ( a0 & 1 ) == 0)
    {
        a0 = ( a1 << 31 ) | ( a0 >> 1 );
        a1 = a1 >> 1;
    }
    return 0;
}
