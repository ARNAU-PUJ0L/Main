#include <stdio.h>

#define MAX 100

int main() {
    FILE *file = fopen("data.txt", "r");

    char data[MAX];
    int i = 0;

    if (file == NULL) {
        printf("Error al abrir el archivo");
    }else{

        while(fgets(data, MAX, file) != NULL){
            i = 0;

            while(data[i] != ' '){
                printf("%c", data[i]);
                i++;
            }

            printf("\n");
        }


        fclose(file);

    }

    
    return 0;
}
