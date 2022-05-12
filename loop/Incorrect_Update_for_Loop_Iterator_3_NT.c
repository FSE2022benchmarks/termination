/*
92eb7a2f28d551acedeb5752263267a64b1f5ddf
https://github.com/cleaton/android_kernel_samsung_smdk4210/commit/92eb7a2f28d551acedeb5752263267a64b1f5ddf
termination: false
*/



int main()
{
    int nfds = __VERIFIER_nondet_int();
    int nr = __VERIFIER_nondet_int();
    int NR_OPEN = __VERIFIER_nondet_int();
    while( nfds <= nr )
    {
        nfds = nfds * 2;
        if( nfds > NR_OPEN )
            nfds = NR_OPEN;
    }
    return 0;
}
