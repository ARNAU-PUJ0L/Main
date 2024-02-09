#include <stdio.h>
#include <string.h>


#define MAX_COMAND 50
#define MAX_TARIF 40

void fix_str(char string[MAX_TARIF]){
    for(int i = 0; i < MAX_TARIF; i++){
        if (string[i] == '\n'){
            string[i] = '\0';
        }
    }
}




int main(){

    char tariffs[MAX_TARIF];

    printf("Enter tariffs: ");
    fgets(tariffs, MAX_TARIF, stdin);

    fix_str(tariffs);



    int k = 0;
    int j = 0;
    int x = 0;

    for(int i = 0; i < MAX_TARIF; i++){

        if(tariffs[i] == 'C' && tariffs[i + 1] == 'A' && tariffs[i + 2] == 'R' && tariffs[i + 3] == 'S'){

            k = i + 5;

            while(tariffs[k] != '/'){
                printf("%c", tariffs[k] );

                k++;
            }

            j = k + 1;
            
            while(tariffs[j] != '/'){
                printf("%c", tariffs[j] );

                j++;
            }
            
            x = j + 1;
            
            while(tariffs[x] != '/'){
                printf("%c", tariffs[x] );

                x++;
            }




        }

    }


    return 0;
}

