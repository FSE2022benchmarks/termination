/*
c3115350eb8bb635d0fdb4dbbb0d0541f38ed19c



 Categorization: Iterator plus 0
 Property of Termination in Reality: TRUE

*/
int main()
{

    int linesToRead = __VERIFIER_nondet_int();
    if( linesToRead < 0 )
        return 0;
    int h = __VERIFIER_nondet_int();
    while( linesToRead && h > 0 )
    {
        if( linesToRead > h )
            linesToRead = h;
        h -= linesToRead;
    }
    return 0;

}
