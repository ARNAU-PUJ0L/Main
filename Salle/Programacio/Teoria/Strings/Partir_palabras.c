// Implementeu un programa capaç de llegir una frase
//  i mostrar-la per pantalla paraula a paraula.

// hola que tal com esteu

// fgets ( <variable> , <mida text> , stdin);

/*
        char frase[100];

        fgets(frase, 100, stdin);
*/

#include <stdio.h>

#define MIDA_FRASE 1000
#define MIDA_PARAULA 100

int main () {
        char frase[MIDA_FRASE];
        char paraula[MIDA_PARAULA];
        int i = 0;
        int i_paraula = 0;

        // Llegir una frase
        printf("Frase: ");
        fgets(frase, MIDA_FRASE, stdin);

        // Eliminar el \n del final de la frase
        i = 0;
        while (frase[i] != '\0') {
                i++;
        }
        if (frase[i-1] == '\n') {
                frase[i-1] = '\0';
        }

        // Canviar els espais per \n
        i = 0;
        // hola que tal com esteu\0
        while (frase[i] != '\0') {
                i_paraula = 0;
                while (frase[i] != ' ' && frase[i] != '\0') {
                        paraula[i_paraula] = frase[i];
                        i++;
                        i_paraula++;
                }
                paraula[i_paraula] = '\0';
                printf("%s\n", paraula);

                if (frase[i] != '\0') {
                        i++;
                }
        }









                // Si trobo un espai, el canvio per \n
                if (frase[i] == ' ') {
                        paraula[i_paraula] = '\0';
                        printf("|%s|\n", paraula);

                        i_paraula = 0;
                }
                else {
                        paraula[i_paraula] = frase[i];
                        i_paraula++;
                }

                i++;
        }
        paraula[i_paraula] = '\0';
        printf("|%s|\n", paraula);

        printf("Frase = |%s|\n", frase);

        return 0;
}