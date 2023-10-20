#include <stdio.h>

int main() {

    int num;
    int i = 1;
    int j = 1;

    printf("Num enter positiu: ");
    scanf("%d", &num);

    while ( i <= num){
        
        if( i % j != 0){

            j++;

        }

        printf("%d", i);
        i++;

    }
    


    return 0;
}
