/*
4b35c31087048af38083a5a0273ab5a72064626b
https://github.com/mej/Eterm/commit/4b35c31087048af38083a5a0273ab5a72064626b
termination: false

*/
int gettablesize()
{
    int i = __VERIFIER_nondet_int();
    i = i % 99999;
    if( i < 0 )
        return -i;
    else
        return i;
}
int main()
{
    unsigned short i;
    unsigned long max_fds = gettablesize();
    for( i = 0 ; i < max_fds ; i++ )
    {
        //loop
    }

    return 0;
}
