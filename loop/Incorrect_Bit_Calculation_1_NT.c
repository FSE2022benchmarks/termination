/*
xserver _ 71c3a97142265804d64f443bd1ddb68ac356f8a3
https://github.com/mirror/xserver/commit/78574a66b5b286e26839877640592980de089d64


This program is from a bug in Xserver.

When mask = 0 , it will be non-terminating.



*/
int main()
{
    int mask= __VERIFIER_nondet_int();
    while( ( mask & 1 ) == 0 )
    {
        mask >>= 1;
    }
    return 0;
}
