#include <stdio.h>
#include <string.h>

#define PATH_ABSOLUT "/tmp/PROG-C/demo.txt"
#define PATH_RELATIU "../../../tmp/PROG-C/demo.txt"
#define FILENAME "lorem.txt"

int main () {
        FILE* fitxer = NULL;
        char paraula[100];

        fitxer = fopen(FILENAME, "r");
        if (NULL == fitxer) {
                // ERROR
                printf("Error el fitxer no existeix.\n");
        }
        else {
                // Fitxer està obert

                // PRELECTURA
                //fscanf(fitxer, "%s", paraula);
                fgets(paraula, 100, fitxer);
                while (!feof(fitxer)) {
                        paraula[strlen(paraula)-1] = '\0';

                        printf("%s\n", paraula);


                        // PRELECTURA
                        //fscanf(fitxer, "%s", paraula);
                        fgets(paraula, 100, fitxer);
                }

                fclose(fitxer);
        }

        return 0;
}
