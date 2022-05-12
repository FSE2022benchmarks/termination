/*
358a11a928cdca474c82472a2ca0d619426439f1
https://github.com/brltty/brltty/commit/358a11a928cdca474c82472a2ca0d619426439f1
termination: false


*/
int main()
{
    int i = 0;
    int base = __VERIFIER_nondet_int();
    int count = __VERIFIER_nondet_int();
    int old_[10], new_[10];
    for( int j = 0 ; j < 9 ; j++ )
    {
        old_[j] = __VERIFIER_nondet_int();
        new_[j] = __VERIFIER_nondet_int();
    }
    old_[9] = 0;
    new_[9] = 0;
    while(1)
    {
        int number = base;
        while( old_[i] != new_[i] )
        {
            if( ++number == count )
                goto done;
        }
        i++;
        base += 8;
    }
done:
    return 0;
}
