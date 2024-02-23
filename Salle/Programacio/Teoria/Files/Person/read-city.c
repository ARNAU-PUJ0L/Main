#include <stdio.h>
#include <string.h>

#define FILENAME "data.txt"
#define MAX 100

int main(){

    FILE* file;
    char data[MAX];
    int i = 0;


    file = fopen(FILENAME, "r");

    if(file == NULL){
        printf("ERROR File not found");
    }else{

        while(fgets(data, MAX, file) != NULL){
            i = 0;

            while(data[i] != ' '){
                i++;
            }

            i++;

            while(data[i] != ' '){
                i++;
            }

            i++;

            while(data[i] == '-'){
                i++;
            }

            i++;

            while(data[i] != '-'){
                i++;
            }

            i++;

            while(data[i] == '-'){
                i++;
            }

            i++;

            while(data[i] != '\0'){
                printf("%c", data[i]);
                i++;
            }

            printf("\n");
        }
        
        fclose(file);
    }

    return 0;
}
