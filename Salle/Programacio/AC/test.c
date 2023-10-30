#include <stdio.h>

int esDiezHappy(int n) {
    int suma = 0;
    
    while (n > 0) {
        int digito = n % 10;
        suma += digito * digito;
        n /= 10;
    }
    
    return suma == 10;
}

int main() {
    int numero;
    
    printf("Ingresa un número: ");
    scanf("%d", &numero);
    
    if (esDiezHappy(numero)) {
        printf("%d es un número 10-happy.\n", numero);
    } else {
        printf("%d no es un número 10-happy.\n", numero);
    }
    
    return 0;
}
