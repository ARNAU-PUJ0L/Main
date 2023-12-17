#include <stdio.h>
#include <string.h>

#define MAX_NOM 50

int main(){

    // llegir string

    char nom[MAX_NOM];
    char cognom[MAX_NOM];
    char alias[MAX_NOM];

    printf("Nom: ");
    fgets(nom, MAX_NOM, stdin);

    printf("Cognom: ");
    fgets(cognom, MAX_NOM, stdin);

    //strlen -> nº letras del string
    printf("%d\n", strlen(nom));

    //strcat -> afageix la cadena b al final de la cadena a
    strcat(nom, cognom);
    printf("%s\n", nom);

    //strcpy -> Copiar el valor de un string a otro
    strcpy(alias, nom);
    printf("%s\n", alias);

    //strcmp -> compara dues cadenes retorna <0 | 0 | >0
    printf("%d", strcmp(nom, cognom)); // retorna 0 si son igual

    


    return 0;
}