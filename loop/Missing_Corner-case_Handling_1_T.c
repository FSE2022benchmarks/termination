/*
cd64eeac116d3bb4871d114b105440b4dd11b8e0
https://github.com/DPDK/dpdk/commit/cd64eeac116d3bb4871d114b105440b4dd11b8e0
termination: true
*/

int flag = 0;
int count = 0;
int read()
{
    if( flag == 1 || count > 100 ) //whether EOF or not
        return 0;
    int num =  __VERIFIER_nondet_int();
    if( num <= 0 ) //abnormal
    {
        return -1;
    }
    else
    {
        num = num % 1000;
        if( num < 995 ) //read a char
        {
            count++;
            return num;
        }
        else // EOF
        {
            flag = 1;
            return 0;
        }
    }

}
int main()
{
    while(1)
    {
        if( read() <= 0 )
            break;
    }
    return 0;
}
