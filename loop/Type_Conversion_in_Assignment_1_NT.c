/*
57e7400d046f382ee94745791ccb0e1a06efb2e4

*/
#define EOF -1
int flag = 0;
int fgetc()
{
    if( flag > 1000 )
        return -1;
    flag++;
    int c = __VERIFIER_nondet_int();
    if( c < 0 )
        c = -c;
    c = c % 256;
    return c;
}
int main()
{
    unsigned char temp;
    for( ; ; )
    {
        temp = fgetc();
        if( temp == '\0' || temp == EOF )
            return 0;
        switch( temp ){
            case EOF:
                return 0;
            case '=':
                break;
            case '\0':
                break;
            default:
                break;
        }
    }
    return 0;
}
