/*
Xserver _ 78574a66b5b286e26839877640592980de089d64
https://github.com/mirror/xserver/commit/78574a66b5b286e26839877640592980de089d64


This program is from a bug in Xserver.

*/
int main()
{
    int i,j;
    int num_crtc = __VERIFIER_nondet_int();
    int num_output = __VERIFIER_nondet_int();
    if( num_crtc > 65534 || num_output > 65534 )
        return 0;
    for( i = 0 ; i < num_crtc ; i++ )
    {
        for( i = 0 ; i < num_output ; i++ )
        {
            //do other
        }
    }
    return 0;
}
