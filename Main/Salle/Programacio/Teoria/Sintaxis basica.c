#include <stdio.h>
#include <stdbool.h>


// -lm al compilar al usar math

// Constantes (C no permite que las constantes empiezen con numeros)

#define PI 3.1416

#define MAX_AGE 120


// FUNCIONES SECUNDARIAS

void f_sin_parametros() {

    printf("Esta es una funcion sin parametros");

}

void f_parametros(char name[], int age) {

    printf("Hola me llamo %s y tengo %d años", name, age);

}



// FUNCION PRINCIPAL

int main() {

    printf("Hola \nAdios\n");

    //Tipos de Variables

    int numero = 10;
    float decimal = 1.5;
    char letra = 'a';
    char Frase [] = "Hola buenas tardes";
    bool sino = true;


    //Print de tipos de viariables

    printf("%d\n", numero);
    printf("%f\n", decimal);
    printf("%c\n", letra);
    printf("%c\n", Frase);
    printf("%d", sino);

    // Convertidor de datos

    int num1 = 5;
    int num2 = 2;
    float sum = (float) num1/num2; // Conviertes los valors INT en FLOAT.

    const int num3 = 60;     // con const la variable no podra modificar de ningun tipo.

    printf("%f\n", sum);


    //Condicional if / else if / else

    if (20 > 18) {
        printf("Si \n");

    }else{
        printf("No");
    }
    
    //Condicional abreviacion

    (20 > 18) ? printf ("Si \n") : printf("No");

    //Condicional Swich

    int day = 4;

    switch (day) {
    case 1:
        printf("Monday");
        break;
    case 2:
        printf("Tuesday");
        break;
    case 3:
        printf("Wednesday");
        break;
    case 4:
        printf("Thursday\n");
        break;
    case 5:
        printf("Friday");
        break;
    case 6:
        printf("Saturday");
        break;
    case 7:
        printf("Sunday");
        break;

    default:
        printf("Non");  // Si no hay coincidencia con ninguno de los casos se ejecuta el default
    }


    // Bucles while

    int i = 0;

    while (i < 5) {
        printf("%i\n", i);
        i++;
    }

    int a = 0;

    // Bucle do + while

    do {
        printf("%d\n", a);
        a++;
    }
    while (a < 5);


    // Bucle for

    for (i = 0; i <= 10; i = i + 2) {
        printf("%d\n", i);
    }
        

    // Bucles dentro de bucles

    int i, j;

    // Outer loop
    for (i = 1; i <= 2; ++i) {
        printf("Outer: %d\n", i);  // Executes 2 times

    // Inner loop
    for (j = 1; j <= 3; ++j) {
        printf(" Inner: %d\n", j);  // Executes 6 times (2 * 3)
    }
    }


    // Break an continous

    int i = 0;

    while (i < 10) {
        if (i == 4) {
    break; // continue
    }

    printf("%d\n", i);
    i++;
    } 

    // Arrays

    int array[] = {32, 25, 88, 45};
    printf("%d", array[2]);

    int array[3] = 6; // cambiar valor de array

    
    // Matriz

    int matriz_2x3[2][3]={{3, 65, 2}, {326, 58, 1}};


    //Input

    int num;

    printf("Hola\n");

    printf("Introduce un num: ");

    scanf("%d", &num);

    printf("Tu valor es: %d", num);


    //adresa de memoria

    printf("%p", &num);

    // Puntero

    int num25 = 25;

    int* pointer = &num25;

    // Print del puntero de los valores de un array

    int i;

    int array[4] = {45, 85, 256, 168156};

    for(i=0; i<4; i++) {

        printf("%p \n", array[i]);

    }

    // size of the array

    printf("%lu", array);

    // print valores de array con pointers

    printf("%d", *array);

    // llama a una funcion externa 

    f_sin_parametros();     // sin parametros

    f_parametros("Arnau", 18); // con parametros


    // File

    FILE *fptr; // Es necesario un puntero para manejar ficheros

    fptr = fopen("file_1.txt", "w");

    fprintf(fptr, "texto");


    return 0; //fin de la funcion main

}


    


