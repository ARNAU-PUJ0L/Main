#include <stdio.h>

#define MAX_NOM 100

// registres = conjunt de dades heterogeneas

// Creas la nueva estructura de datos

struct Person {
    char nom[MAX_NOM];
    int edat;
    int num_DNI;
    char lletra_DNI;
};

//Funcio de tipus Person que retorna els valors de la estructura de dades

struct Person llegir_persona(){

    struct Person p;
    
    printf("Introdueix el nom: ");
    scanf("%s", p.nom);

    printf("Introdueix l'edat: ");
    scanf("%d", &p.edat);

    printf("Introdueix el DNI (amb lletra): ");
    scanf("%d", &p.num_DNI);
    scanf(" %c", &p.lletra_DNI);

    return p;
}


int main(){

    struct Person p;
    struct Person p2;

    p = llegir_persona(); 
    printf("Nom: %s edat: %d DNI: %d-%c\n", p.nom, p.edat, p.num_DNI, p.lletra_DNI);

    p2 = llegir_persona();
    printf("Nom: %s edat: %d DNI: %d-%c", p2.nom, p2.edat, p2.num_DNI, p2.lletra_DNI);




    return 0;
}