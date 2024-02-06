#include <stdio.h>
#include <string.h>

/*

Modes fichers text: r -> read; w -> write; a -> append
Modes fichers binaris: rb; wb; ab;


*/


int main() {

    char mensaje[100];
    char option;
    char name[100];
    int age;
    FILE *fptr;


    printf("Crear(c) o abrir fichero (o): ");
    scanf("%c", &option);

    switch (option){

        case 'c':

            printf("Introduce tu nombre: ");
            scanf("%s", name);
            
            printf("Introduce tu edad: ");
            scanf("%d", &age);

            fptr = fopen("data.txt", "w");

            if (fptr == NULL){
                printf("ERROR DE LECTURA");
                return 1;
            }


            fprintf(fptr, "Tu nombre es %s y tienes %d anyos", name, age);
            fclose(fptr);

            break;

        case 'o':
            
            fptr = fopen("data.txt", "r");

            if (fptr == NULL){
                printf("ERROR DE LECTURA");
                return 1;
            }

            fgets(mensaje, 100, fptr);
            printf("%s", mensaje);
            fclose(fptr);

            break;


        default:
            printf("Opcion incorrecta");

    }





    return 0;
}