#include <string.h>


strlen - String length - mida de la cadena (caracters valids abans \0)
strcpy - String copy - copia tots els caracters de la cadena B a la A
strcmp - String compare - compara dues cadenes retorna <0 | 0 | >0
strcat - String concatenate - afegeix la cadenaB al final de la cadena A


int  strlen(char cadena[]);
void strcpy(char cadena_A[], char cadena_B[]);
int  strcmp(char cadena_A[], char cadena_B[]);
void strcat(char cadena_A[], char cadena_B[]);

cad_a <-- hola
" "
cad_b <-- que

strcpy(cad_b, "que");  // cad_b = "que" NO ES POT FER
strcpy(cad_a, "hola");
strcat(cad_a, " ");             // cad_a = cad_a + " "

X = strlen(cad_a)-1;
cad_a[X] = '\0';

strcat(cad_a, cad_b);


holaque

char cadena[100];

cadena = "hola"; NO ES POT FER / NO COMPILA
strcpy(cadena, "hola");

if (strcmp(cad_a, cad_b) == 0) {
        printf("Son iguals\n");
}
else {
        if (strcmp(cad_a, cad_b) > 0) {
                printf("CAD_B va abans que CAD_A");
        }
        printf("No son iguals\n");
}