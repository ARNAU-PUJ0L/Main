// ITOA - Integer To ACSII

/*
1234 --> {'1', '2', '3', '4', '\0'}

// 1. Descomposar número en digits
numero % 10 --> últim digit
numero / 10 --> reduir el número en 1 digit.

// 2. Convertir 1 digit enter a char
digit <-- 4
'0' + digit --> '4'

'0' - 48
'1' - 49
'2' - 50
'3' - 51
'4' - 52

// Problema!!

1234
4
3
2
1
{'4', '3', '2', '1', '\0'}

// Solució!
3. Cal girar el número! Com a enter o com a cadena.
*/


#include <stdio.h>
#include <string.h>

#define MAX 100

// Invertir l'ordre dels caracters d'una cadena
// IN:  Una cadena
// OUT: La mateixa cadena
void reverse(char cadena[]) {
        char aux[MAX];
        int i = strlen(cadena) - 1;
        int j = 0;

        // Girar la cadena sobre AUX
        while (i >= 0) {
                aux[j] = cadena[i];
                j++;
                i--;
        }
        aux[j] = '\0';

        // Copiar AUX a CADENA
        strcpy(cadena, aux);
}



// ITOA - Integer To ASCI --> Int -> String/Cadena
// IN:  enter a transformar
// OUT: cadena amb el número transformat
void itoa(int numero, char numero_ascii[]) {
        int digit = 0;
        char digit_en_caracter;
        int i = 0;

        // 1. Descomposar el número en digits
        while (numero > 0) {
                digit = numero % 10;

                // 2. Guardar el digit en la cadena.
                digit_en_caracter = '0' + digit;
                numero_ascii[i] = digit_en_caracter;

                i++;
                numero = numero / 10;
        }

        numero_ascii[i] = '\0';

        reverse(numero_ascii);
}

int main () {
        int numero = 0;
        char num_char[MAX];
        printf("Numero: ");
        scanf("%d", &numero);

        itoa(numero, num_char);

        printf("Numero en chr: %s\n", num_char);

        return 0;
}
