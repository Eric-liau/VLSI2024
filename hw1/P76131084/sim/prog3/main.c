typedef unsigned int UINT;
extern UINT div1;
extern UINT div2;
extern int _test_start;

//UINT gcd(UINT, UINT);
int main(void){
    UINT big, small, temp;
    small = div1;
    big = div2;
    if(div1 > div2){
        big = div1;
        small = div2;
    }
    while(big != small){
        while(big > small)
            big = big - small;
            
        if(big == small){
            (&_test_start)[0] = small;
            return 0;
        }
        temp = big;
        big = small;
        small = temp;
    }
    
    
    (&_test_start)[0] = small;
    return 0;
}





