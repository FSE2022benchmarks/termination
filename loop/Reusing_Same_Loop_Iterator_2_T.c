/*
24abdc9d313db1d320cb8c768c968098a4dda2c4



 Categorization: reuse same loop iterator
 Property of Termination in Reality: TRUE

*/
int main()
{
    int i;
    int num = __VERIFIER_nondet_int();
    if( num > 65534 )
        return 0;
    for( i = 0 ; i < num ; i++ )
    {
        int j;
        for( j = 0 ; j < 3 ; j++ )
        {
            //do other
        }
    }
    return 0;
}
