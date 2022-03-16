/*
930b9a069a425818d4e9965f53be7df1f4d7d422



*/
int main()
{
    int val = __VERIFIER_nondet_int();
    if( val <= 0  )
        return 0;
    int bits;
    for( bits = 0 ; val != 0 ; bits++ )
        val >>= 1;
    return 0;
}
