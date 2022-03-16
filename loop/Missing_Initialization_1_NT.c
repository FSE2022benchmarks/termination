/*
407a3d94f566a68c7a862fcdac812bf53741af94

*/
int main()
{
    int res = 0;
    int pkt = __VERIFIER_nondet_int();
    while( pkt < 10 )
    {
        while( res == 0 )
        {
            res = __VERIFIER_nondet_int();
            pkt++;
        }
    }
    return 0;
}
