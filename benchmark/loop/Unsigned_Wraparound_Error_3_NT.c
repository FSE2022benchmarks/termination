/*

Commit Number: 9d4a9ea675bcc1ca144101d058804f4fed37e65d
URL: https://github.com/osxfuse/fuse/commit/9d4a9ea675bcc1ca144101d058804f4fed37e65d
Project Name: fuse
License: GPL-2.0
termination: FALSE
*/
int main()
{
    unsigned int pathlen = __VERIFIER_nondet_uint();
    unsigned int newbufsize = __VERIFIER_nondet_uint();
    unsigned int len = __VERIFIER_nondet_uint();
    if( newbufsize == 0 )
        return 0;
    if( newbufsize + len + 1 == 0xffffffff )
        return 0;
    while( newbufsize < pathlen + len + 1 )
        newbufsize *= 2;
    return 0;
}
