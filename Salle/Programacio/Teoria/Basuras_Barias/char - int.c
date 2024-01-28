#include <stdio.h>
#include <string.h>

#define MAX 50

void si (char sentence [MAX]){

    for(int i = 0; i <= MAX; i++){

        if(sentence[i] == '\n'){
            sentence[i] = '\0';
        }
    }

}

int main(){

    int suma = 0;
    char phrase[MAX];

    printf("Phrase? ");
    fgets(phrase, MAX, stdin);


    for(int i = 0; i <= MAX && phrase[i] != '\0'; i++){

        suma += (int)phrase[i];

    }

    printf("%d", suma);

    return 0;
}