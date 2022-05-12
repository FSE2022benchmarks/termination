/*
c3115350eb8bb635d0fdb4dbbb0d0541f38ed19c
https://github.com/Sugon-Beijing/libvncserver/commit/c3115350eb8bb635d0fdb4dbbb0d0541f38ed19c
termination: false
*/
int main()
{

    int linesToRead = __VERIFIER_nondet_int();
    if( linesToRead < 0 )
        return 0;
    int h = __VERIFIER_nondet_int();
    while( h > 0 )
    {
        if( linesToRead > h )
            linesToRead = h;
        h -= linesToRead;
    }
    return 0;

}
