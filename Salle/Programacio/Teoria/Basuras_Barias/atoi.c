#include <stdio.h>

#define MAX 50
/*
 * ATOI - ASCII To Integer
 * Aquesta funcio transforma una cadena que conté enters en el seu
 * format int.
 * Entrada:
 *      cadena: string que només conté digints numerics.
 */
int atoi (char cadena[]) {
        int i = 0;
        int resultat = 0;

        while (cadena[i] != '\0' && cadena[i] >= '0' && cadena[i] <= '9') {
                resultat = resultat * 10 + cadena[i] - '0';
                i++;
        }

        return resultat;
}


int main () {
        int numero = 0;
        char cadena[MAX];
        int i = 0;
        int digit = 0;

        printf("Numero: ");
        scanf("%s", cadena);

        i = 0;
        while (cadena[i] != '\0') {
                digit = cadena[i] - '0';
                printf("Digit nou: %d\n", digit);
                printf("Numero actual: %d\n", numero);
                numero = numero * 10;
                numero = numero + digit;
                printf("Numero actualitzat: %d\n", numero);
                //numero = numero * 10 + cadena[i] - '0';

                i++;
        }

        printf("Numero: %d\nCadena = %s\n", numero, cadena);

        return 0;
}