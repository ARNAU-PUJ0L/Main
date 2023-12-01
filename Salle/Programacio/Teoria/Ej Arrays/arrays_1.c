#include <stdio.h>

#define MAX_VALUE 5

int main(){

    int array[MAX_VALUE];

    for (int i = 0; i < MAX_VALUE; i++){

        printf("Introduce el %d del array: ", i);
        scanf("%d", &array[i]);
    }

    for (int k = 0; k < MAX_VALUE; k++){

        printf("%d\n", array[k]);

    }


    return 0;
}