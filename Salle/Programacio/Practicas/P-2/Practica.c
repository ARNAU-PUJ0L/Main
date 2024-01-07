#include <stdio.h>
#include <string.h>

#define MAX_TARIF 100

void remove_n(char string[MAX_TARIF]){
    
    for(int i = 0; i < MAX_TARIF; i++){

        if (string[i] == '\n'){

            string[i] = '\0';

        }

    }

}




void read_tariff(char tariff[MAX_TARIF]){



}




int main(){

    printf("Welcome to Parking LS!\n");
    
    char tariffs[MAX_TARIF];

    printf("Enter tariffs: ");
    fgets(tariffs, MAX_TARIF, stdin);

    remove_n(tariffs);





    return 0;
}