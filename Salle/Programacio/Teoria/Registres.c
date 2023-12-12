#include <stdio.h>

#define MAX_NOM 100
#define MAX_MARCA 100

// Typedef -> es un alies, ahora int x; == Enter x;

typedef int Enter;

// typedef + struct -> lo q antes se llamada struct coche ahora es coche (El nom del struct no es obligatori)

typedef struct{
    char marca[MAX_MARCA];
    char matricula[MAX_MARCA];
    int edat;
} coche;



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

    Enter num;

    p = llegir_persona(); 
    printf("Nom: %s edat: %d DNI: %d-%c\n", p.nom, p.edat, p.num_DNI, p.lletra_DNI);

    p2 = llegir_persona();
    printf("Nom: %s edat: %d DNI: %d-%c\n", p2.nom, p2.edat, p2.num_DNI, p2.lletra_DNI);

    printf("Introduce un numero: ");
    scanf("%d", &num);
    printf("Valor de tipo ENTER (INT): %d", num);


    return 0;
}