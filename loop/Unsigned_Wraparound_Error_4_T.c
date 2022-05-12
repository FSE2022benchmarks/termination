/*
ce9d4462423ac74a1dbbc4ce52c2c81cfcdda766
https://github.com/ArtifexSoftware/mupdf/commit/ce9d4462423ac74a1dbbc4ce52c2c81cfcdda766
termination: true

*/
int main()
{
    unsigned int n = __VERIFIER_nondet_uint();
    while( n > 0 )
    {
        unsigned int len = n;
        if( len > 16 )
            len = 16;
        n -= len;
    }
    return 0;
}
