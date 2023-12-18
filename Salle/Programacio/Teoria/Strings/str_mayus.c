#include <stdio.h>

#define MAX 100

int main(){

    char frase[MAX];
    int caracteres = 0;

    printf("Enter a string: ");
    fgets(frase, MAX, stdin);

    for (int i = 0; i < MAX; i++){

        if ((frase[i] >= 'A' && frase[i] <= 'Z') || (frase[i] >= 'a' && frase[i] <= 'z')){

            caracteres++;

        }

    }
    

    for(int k = 0; k < caracteres; k++){

        if (frase[k] >= 'A' && frase[k] <= 'Z'){

            frase[k] = frase[k] - 'A' + 'a';

        }


    }

    printf("%s", frase);
    


    return 0;
}