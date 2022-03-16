/*
8a7acbf81de51ff991bf8211eff248b46c2b5421


 Categorization: missing iterator self-increment or self-decrement
 Property of Termination in Reality: FALSE

*/
int flag = 0;
int mdb_cursor_get()
{
    int i =  __VERIFIER_nondet_int();;
    flag++;
    if( flag > 1000 )// avoid almost-sure
        return 1;
    if( i >= 0 )
        return 0;
    else
        return 1;
}

int main()
{
    int rc;
    rc = mdb_cursor_get();
    int dval_mv_size = __VERIFIER_nondet_int();
    while( rc == 0 )
    {
        if( dval_mv_size <= 0 )
            continue;
        rc = mdb_cursor_get();
    }
    return 0;
}
