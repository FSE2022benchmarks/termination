/*
7644143cd6f7e029f3a8ea64f5fb0ab33ec39f72



 Categorization: missing iterator self-increment or self-decrement
 Property of Termination in Reality: FALSE

*/
int main()
{
    int MCE_LOG_LEN = __VERIFIER_nondet_int();
    if( MCE_LOG_LEN <= 0 || MCE_LOG_LEN > 1000)
        return 0;
    int mcelog_entry[MCE_LOG_LEN];
    for( int i = 0; i < MCE_LOG_LEN; i++ )
        mcelog_entry[i] = __VERIFIER_nondet_int();
    int entry = __VERIFIER_nondet_int();
    if( entry < 0 )
        return 0;
    for( ; ; )
    {
        if( entry >= MCE_LOG_LEN )
            return 0;
        if( mcelog_entry[entry] )
        {
            entry++;
            continue;
        }
    }
    return 0;
}
