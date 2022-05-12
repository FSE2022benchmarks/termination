/*
5ff623fc990210e4bb5dc04447f9e95ad83e5195
https://github.com/alsa-project/alsa-lib/commit/5ff623fc990210e4bb5dc04447f9e95ad83e5195
termination: true


*/
int main()
{
    unsigned int best = __VERIFIER_nondet_uint();
    unsigned int cur = best;
    unsigned int pre;
    unsigned int st_max = __VERIFIER_nondet_uint();
    unsigned int it_min = __VERIFIER_nondet_uint();
    if( st_max <= it_min )
        return 0;
    if( best == 0 )
        return 0;
    for( ;  ; )
    {
        if( st_max < cur )
        break;
        pre = cur;
        cur += best;
        if( cur <= pre )
            break;
    }
    return 0;
}
