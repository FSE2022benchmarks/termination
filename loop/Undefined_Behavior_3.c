/*
d597655f771979c70c08f8f8ed84c1319da121e8

*/

int main()
{
    unsigned int val = __VERIFIER_nondet_uint();
    int bytes = 1;
    while( val >> bytes * 8 )
        bytes++;
    return 0;
}
