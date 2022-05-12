/*
9b0f9003dfab6a230d46aaa94091bf509d889f37
https://github.com/FFmpeg/FFmpeg/commit/9b0f9003dfab6a230d46aaa94091bf509d889f37
termination: potential non-termination


*/
int main()
{
    unsigned int num = __VERIFIER_nondet_uint();
    int bytes = 1;
    while( (num + 1 ) >> bytes * 7 )
        bytes++;
    return 0;
}
