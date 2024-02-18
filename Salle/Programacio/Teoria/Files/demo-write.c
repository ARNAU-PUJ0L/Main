#include <stdio.h>
#include <string.h>

int main() {
        FILE* fitxer = NULL;
        char filename[100];
        char text[100];
        char option;
        char mode[2];

        printf("Nom del fitxer: ");
        scanf("%s", filename);
        fgets(text, 100, stdin);

        printf("Vols esborrar el contingut [Y/n]? ");
        scanf("%c", &option);
        fgets(text, 100, stdin);

        if ('Y' == option) {
                strcpy(mode, "w");
        }
        else {
                strcpy(mode, "a");
        }

        fitxer = fopen(filename, mode);
        if (NULL == fitxer) {
                printf("No s'ha pogut obrir el fitxer %s.\n", filename);
        }
        else {
                printf("Text: ");
                fgets(text, 100, stdin);
                text[strlen(text)-1] = '\0';

                fprintf(fitxer, "%s", text);

                fclose(fitxer);
        }

        return 0;
}