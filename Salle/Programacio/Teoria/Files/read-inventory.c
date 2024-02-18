#include <stdio.h>
#include <string.h>

// Llegir un fitxer de text que conté productes, en la forma
// nom, unitats i preu.

#define FILENAME_IN  "inventory.txt"
#define FILENAME_OUT "inventory2.txt"

typedef struct {
        char nom[100];
        int unitats;
        float preu;
} Producte;

int main () {
        FILE* fitxer = NULL;
        FILE* fitxer_out = NULL;

        Producte products[100];
        int num_products = 0;

        int length;
        char aux[10];

        fitxer = fopen(FILENAME_IN, "r");
        if (NULL == fitxer) {
                printf("ERROR.\n");
        }
        else {
                fitxer_out = fopen(FILENAME_OUT, "w");
                if (NULL == fitxer_out) {
                        printf("ERROR FITXER OUT.\n");
                }
                else {

                        // PRELECTURA
                        fgets(products[num_products].nom, 100, fitxer);
                        while (!feof(fitxer)) {
                                // llegir el nom del producte
                                length = strlen(products[num_products].nom)-1;
                                products[num_products].nom[length] = '\0';

                                // llegir unitats
                                fscanf(fitxer, "%d", &products[num_products].unitats);

                                // llegir preu
                                fscanf(fitxer, "%f", &products[num_products].preu);
                                fgets(aux, 10, fitxer);

                                fprintf(fitxer_out, "Producte: %s (%d) - %.2f€\n",
                                        products[num_products].nom,
                                        products[num_products].unitats,
                                        products[num_products].preu);

                                num_products++;

                                // PRELECTURA
                                fgets(products[num_products].nom, 100, fitxer);
                        } // END-WHILE

                        fclose(fitxer_out);
                } // END-ELSE SEGON FITXER

                fclose(fitxer);
        } // END-ELSE PRIMER FITXER

        return 0;
}