#include <stdio.h>
#include <string.h>

#define FILENAME "data.txt"
#define MAX 100

int main(){

    FILE* file;
    char data[MAX];

    file = fopen(FILENAME, "r");

    if(file == NULL){
        printf("ERROR File not found");
        return 1;
    }

    while(fgets(data, MAX, file) != NULL){
        
        int i = 0;

        while(data[i] != ' '){
            i++;
        }

        i++;

        while(data[i] != ' '){
            printf("%c", data[i]);
            i++;
        }

        printf("\n"); // Nueva línea después de imprimir la palabra encontrada
    }

    fclose(file);

    return 0;
}
