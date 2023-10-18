#include <stdio.h>

#define ALPHA 2.354578

int main() {
    float x, y, z, resultat;

    printf("Enter a value for the variable X: ");
    scanf("%f", &x);

    printf("Enter a value for the variable Y: ");
    scanf("%f", &y);

    printf("Enter a value for the variable Z: ");
    scanf("%f", &z);

   
    resultat = (((x * x + x * y + 3) / (2 * z)) + ALPHA) / ((((x + 1) * (y + 2)) / ALPHA) + ((z * z * z + 9) / ((1 / (x * x * x)) + (3 / (y + 1)) / z ) - 10)) + 5;

   
    printf("Input x: %.1f\n", x);
    printf("Input y: %.1f\n", y);
    printf("Input z: %.1f\n", z);
    
    
    printf("Result: %.2f\n", resultat);

    return 0;
}