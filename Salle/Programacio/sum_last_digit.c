#include <stdio.h>




int main(){

    int num_1, num_2, num_3, num_4, result;
    int digit_1, digit_2, digit_3, digit_4;

    printf("Number? ");
    scanf("%d", &num_1);

    printf("Number? ");
    scanf("%d", &num_2);

    printf("Number? ");
    scanf("%d", &num_3);

    printf("Number? ");
    scanf("%d", &num_4);

    digit_1 = num_1 % 10;
    digit_2 = num_2 % 10;
    digit_3 = num_3 % 10;
    digit_4 = num_4 % 10;

    result = digit_1 + digit_2 + digit_3 + digit_4;
    printf("%d", result);

    return 0;
}