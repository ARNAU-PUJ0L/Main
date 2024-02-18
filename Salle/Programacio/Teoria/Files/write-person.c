#include <stdio.h>

#define FILENAME "persones.data"

typedef struct {
        char name[100];
        int age;
        float pressure;
} Persona;

Persona readPerson() {
        Persona p;

        printf("Name: ");
        scanf("%s", p.name);

        printf("Age: ");
        scanf("%d", &p.age);

        printf("Pressure: ");
        scanf("%f", &p.pressure);

        return p;
}

void writeToFile(FILE* file, Persona person) {
        //fprintf(file, "%s %d %f\n", person.name, person.age, person.pressure);
        fwrite(&person, sizeof(Persona), 1, file);
}

int main () {
        FILE* file = NULL;
        Persona person;
        int num_people = 0;
        int i;

        file = fopen(FILENAME, "wb");
        if (NULL == file) {
                printf("No s'ha pogut obrir el fitxer %s.\n", FILENAME);
        }
        else {
                printf("Numero persones: ");
                scanf("%d", &num_people);

                for (i = 0; i < num_people; i++) {
                        person = readPerson();
                        writeToFile(file, person);
                }

                fclose(file);
        }

        return 0;
}