/*
asterisk _ 34c30c8ad3725e0c4a7242278ff2606f422cff93
https://github.com/silentindark/asterisk-1/commit/34c30c8ad3725e0c4a7242278ff2606f422cff93

This program is from a bug in asterisk .


 Categorization: Incorrect variable type
 Property of Termination in Reality: FALSE


*/
int main()
{
	unsigned char c1 = __VERIFIER_nondet_uchar();
	char c2 =  __VERIFIER_nondet_char();
	unsigned char ac;
	for( ac = c1 ; ac != c2 ; ac++ )
	{
        //do nothing;
	}
	return 0;
 }
