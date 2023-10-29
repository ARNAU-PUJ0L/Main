#include <stdio.h>

int main() {
    int n, factorial, i = 1;
    int cat;

    printf("Introduce un número para calcular su factorial: ");
    scanf("%d", &n);

    if (n < 0) {
        printf("El factorial no está definido para números negativos.\n");

    } else {
        

        while ( i <= n){
            factorial *= i;
            i++;
        }

        cat = (2*factorial) / ((factorial + 1) * factorial);

        printf("%d", cat);
    }

    return 0;
}
