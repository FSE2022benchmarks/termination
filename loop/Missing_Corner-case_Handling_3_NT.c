/*
fad2eab749cce970fa87fa46186218b2dfe1adc1





*/
int main()
{
    int ROWNO = __VERIFIER_nondet_int();
    int COLNO = __VERIFIER_nondet_int();
    if( ROWNO <= 0 || COLNO <= 0 || ROWNO > 65534 || COLNO > 65534 )
        return 0;
    int levl[ROWNO][COLNO];
    for( int i = 0 ; i < ROWNO ; i++ )
    {
        for( int j = 0 ; j < COLNO ; j++ )
        {
            int num = __VERIFIER_nondet_int();
            if( num > 0 )
                num = -num;
            levl[i][j] = num % 4;
        }
    }
    int STONE = 0;
    int found = 0;
    for( int xmin = 0; !found ; xmin++ )
    {
        for( int y = 0 ; y <= COLNO - 1; y++ )
        {
            if( levl[xmin][y] != STONE )
                found = 1;
        }
    }
    return 0;
}
