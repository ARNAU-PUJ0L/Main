#include <stdio.h>

int checkValue(int num, int base){

    int digito;

    while(num > 0){

        digito = num % 10;

        if(digito >= base){
            return 0;
        }

        num = num / 10;
    }

    return 1;
}


int main(){

    printf("%d",checkValue(151, 2));


    return 0;
}