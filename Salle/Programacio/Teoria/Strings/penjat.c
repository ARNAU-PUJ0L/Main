#include <stdio.h>
#include <string.h>


#define MAX_LETTERS 5
#define MAX_CHANCES 5



void cambiar(char palabra[MAX_LETTERS], int len){


    for (int i = 0; i < len; i++){

        if (palabra[i] == '\n'){

            palabra[i] = '\0';

        }

    }

}



void get_word(){

    int contador_letras = 0;

    char word[MAX_LETTERS];

    printf("Word: ");
    fgets(word, MAX_LETTERS, stdin);

    int len = strlen(word);

    cambiar(word, len);

    for (int i = 0; i < len; i++) {
        
        if ((word[i] >= 'a' && word[i] <= 'z') || (word[i] >= 'A' && word[i] <= 'Z')) {
        
            contador_letras++;
        
        }
    }

    printf("|%s| has %d letters", word, contador_letras);
    
}

int play_game(char palabra[MAX_LETTERS], int len){

    char letter;

    printf("**Enter letters (Maximum 5 attempts)**\n");

    for (int i = 1; i < MAX_CHANCES; i++){

        printf("Attempt [%d]: ", i);
        scanf("%c", &letter);

        for (int k = 0; k < MAX_LETTERS; k++){

            printf("|");

            if (palabra[k] == letter){

                printf("%c", palabra[k]);

            }else{

                printf("*");

            }

            printf("|");
        }

    }


}




int main(){

    get_word();


    return 0;
}