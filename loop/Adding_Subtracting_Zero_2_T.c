/*
a6cba062051f345e8ebfdff34aba071ed73d923f



 Categorization: Iterator plus 0
 Property of Termination in Reality: FALSE

*/
int flag = 0;
int ff_subtitles_next_line()
{
    int i = __VERIFIER_nondet_int();
    i = i % 1000;
    if( flag == 1 )
        return 0;
    if( i == 0 )
    {
        flag = 1;
        return 0;
    }
    else if( i < 0 )
    return -i;
    else
        return i;
}

int main()
{
    int b = __VERIFIER_nondet_int();
    int end = __VERIFIER_nondet_int();
    if( b < 0 || end < 0 )
        return 0;
    while( b < end )
    {
        int inc = ff_subtitles_next_line();
        if( !inc )
            break;
        b += inc;
        if( b >= end - 4 )
        return 0;
    }
    return 0;
}
