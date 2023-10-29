#include <stdio.h>


int main(){
    
    int k = 2;
    int n;
    float cat = 1;
    cat = 1;


    printf("Enter n: ");
    scanf("%d", &n);

    if (n < 0) {
        printf("Invalid Input");

    } else {
        
        while(k <= n){

            cat *= (float) (float) (k+n) / k;

            k++;

        }

        printf("C_%d is %.0f",n ,cat);

    }
    
    
    return 0;
}