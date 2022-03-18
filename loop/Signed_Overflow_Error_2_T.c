/*
 f61813eaea814b49489b3e917c6bdb850c7aeb8b


 Categorization: Shift operation
 Property of Termination: FLASE

*/
int main()
{
    int needed =  __VERIFIER_nondet_int();
    int smallest = 1;
    while( smallest <= needed )
    {
        if( smallest == 0 )
            return 0;
        smallest <<= 1;
    }
    return 0;
}
