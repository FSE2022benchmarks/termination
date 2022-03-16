/*
8852f5f8ff3d521897175ddeb711d6b77e03fa8a



*/
int main()
{
    unsigned int ui = 1;
    unsigned int size = __VERIFIER_nondet_uint();
    unsigned int BUFFSIZE = __VERIFIER_nondet_uint();
    if( size < BUFFSIZE )
        size = BUFFSIZE;
    while( (ui < size) && ( ui * 2 > ui ) )
        ui *= 2;
    return 0;
}
