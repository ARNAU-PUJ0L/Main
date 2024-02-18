#include <stdio.h>

#define FILENAME "persones.data"

typedef struct {
        char name[100];
        int age;
        float pressure;
} Persona;

void printfPerson(Persona person) {
        printf("Nom: %s\n", person.name);
        printf("Edat: %d\n", person.age);
        printf("Pressió: %.2f\n", person.pressure);
}

int main () {
        FILE* file = NULL;
        Persona person;
//      int i = 0;

        file = fopen(FILENAME, "rb");
        if (NULL == file) {
                printf("Error en obrir el fitxer %s.\n", FILENAME);
        }
        else {
                /*
                fread(person, sizeof(Persona), 3, file);
                for (i = 0; i < 3; i++) {
                        printfPerson(person[i]);
                }
                */

                fread(person.name, sizeof(char), 100, file);
                fread(&person.age, sizeof(int), 1, file);
                fread(&person.pressure, sizeof(float), 1, file);
                //fread(&person, sizeof(Persona), 1, file);
                while(!feof(file)) {
                        printfPerson(person);

                        //fread(&person, sizeof(Persona), 1, file);
                        fread(person.name, sizeof(char), 100, file);
                        fread(&person.age, sizeof(int), 1, file);
                        fread(&person.pressure, sizeof(float), 1, file);
                }


                fclose(file);
        }

        return 0;
}