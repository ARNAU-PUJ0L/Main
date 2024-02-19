#include <stdio.h>
#include <string.h>


void search_products(FILE* f, int budget, int size){

    char sentence[500];

    while(fscanf(f, "%s", sentence) != EOF){

        

    }



}



int main(){

    FILE* f;
    char file_name[50];
    int budget = 0;
    int size = 0;


    printf("File name: ");
    scanf("%s", file_name);

    f = fopen(file_name, "r");

    if(NULL == f){
        printf("No offers for this brand");
    }else{
        printf("Budget? ");
        scanf("%d", &budget);
        scanf("%d", &size);

        search_products(f, budget, size);

    }





    return 0;
}
