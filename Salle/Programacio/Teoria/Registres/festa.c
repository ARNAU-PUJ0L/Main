#include <stdio.h>
#include <string.h>

#define NAME_SIZE 100
#define ADDRESS_SIZE 1000

typedef char Name[NAME_SIZE];

typedef struct {
        int dia;
        int mes;
        int any;
} Data;

struct Assistent {
        Name nom;
        Data data_naixement;
        int num_consumicions;
};

typedef struct {
        Name nom;
        Data data_festa;
        char lloc[ADDRESS_SIZE];
        int num_assistents;
        struct Assistent llista_assistents[1000];
} Festa;

void cleanBuffer() {
        char aux[10];
        fgets(aux, 10, stdin);
}

Data llegirData() {
        Data date;

        printf("Dia: ");
        scanf("%d", &date.dia);
        printf("Mes: ");
        scanf("%d", &date.mes);
        printf("Any: ");
        scanf("%d", &date.any);
        cleanBuffer();

        return date;
}

struct Assistent llegirAssistent() {
        struct Assistent assistent;

        printf("Nom assistent: ");
        fgets(assistent.nom, NAME_SIZE, stdin);
        assistent.nom[strlen(assistent.nom)-1] = '\0';

        printf("-Data naixement-\n");
        assistent.data_naixement = llegirData();

        printf("Numero de consumicions: ");
        scanf("%d", &assistent.num_consumicions);
        cleanBuffer();

        return assistent;
}

// IN: ---
// OUT: Festa
Festa llegirFesta() {
        Festa party;
        int i = 0;

        // Llegir el nom de la festa.
        printf("Nom de la festa: ");
        fgets(party.nom, NAME_SIZE, stdin);
        party.nom[strlen(party.nom)-1] = '\0';

        // Data de la festa
        printf("-Data de la festa-\n");
        party.data_festa = llegirData();

        // Lloc
        printf("Lloc de la festa: ");
        fgets(party.lloc, ADDRESS_SIZE, stdin);
        party.lloc[strlen(party.lloc)-1] = '\0';

        // Num assistents
        printf("Numero d'assistents: ");
        scanf("%d", &party.num_assistents);
        cleanBuffer();

        // Dades assistenst
        for (i = 0; i < party.num_assistents; i++) {
                party.llista_assistents[i] = llegirAssistent();
        }

        return party;
}

// IN : ---
// OUT: numero de festes (return)
//      llistat de festes
// Demanar # festes a l'usuari. Demanar les dades de cada festa.
int loadParties(Festa festes[]) {
        int num_festes = 0;
        int i = 0;

        // Demanar # festes
        printf("Quantes festes vols: ");
        scanf("%d", &num_festes);
        cleanBuffer();

        // Demanar info de totes les festes
        for (i = 0; i < num_festes; i++) {
                festes[i] = llegirFesta();
        }

        return num_festes;
}

// Mostrar nom de tots els assitents amb 2+ consumicions
// a qualsevol festa que s'organitzi durant el mes de Juny.
void mostrarAssistents(int num_festes, Festa festes[]) {
        int i = 0;
        int j = 0;

        printf("\n\n");
        // Recorrer les festes.
        for (i = 0; i < num_festes; i++) {
                // Per cada festa: comprovar si mes és 6.
                if (6 == festes[i].data_festa.mes) {
                        // Recorrer tot els assistents de la festa
                        for (j = 0; j < festes[i].num_assistents; j++) {
                                // Per cada assistent: Comprovar si consumicoins >=2
                                if (festes[i].llista_assistents[j].num_consumicions >= 2) {
                                        // Mostrar el nom de l'assitent.
                                        printf("%s\n", festes[i].llista_assistents[j].nom);
                                }
                        }
                }
        }
}

int main () {
        Festa festes[10];
        int num_festes = 0;

        num_festes = loadParties(festes);

        // Mostrar nom de tots els assitents amb 2+ consumicions
        // a qualsevol festa que s'organitzi durant el mes de Juny.
        mostrarAssistents(num_festes, festes);


        return 0;
}
