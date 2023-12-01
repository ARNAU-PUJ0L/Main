#include <stdio.h>

#define MAX_VALUE 5

int main(){

    char array[MAX_VALUE];

    printf("Enter character: \n");

    for (int i = 0; i < MAX_VALUE; i++){

        printf("Introduce el valor %d del array: ", i);
        scanf(" %c", &array[i]);
    }

    for (int k = 0; k < MAX_VALUE; k++){

        if (array[k] >= '0' && array[k] <= '9'){

            printf("%c es un numero \n", array[k]);

        }else{

            printf("%c es una letra\n", array[k]);

        }

    }



    return 0;
}