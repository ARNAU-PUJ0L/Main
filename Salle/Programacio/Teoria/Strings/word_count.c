#include <stdio.h>

#define MAX 500

void cambiar(char string[MAX]){

    for(int i = 0; i < MAX; i++){

        if (string[i] == '\n'){

            string[i] = '\0';

        }

    }


}


int main() {
    char sentence[MAX]; // Asumimos una longitud máxima de la frase de 1000 caracteres

    // Pide al usuario que introduzca una frase
    printf("Sentence? ");
    fgets(sentence, MAX, stdin);

    // Inicializa la variable que guardará el número de palabras
    int wordCount = 0;
    int isWord = 0; // Variable para seguir si estamos dentro de una palabra o no

    // Recorre la frase y cuenta el número de palabras
    for (int i = 0; sentence[i] != '\0'; i++) {
        // Comprueba si el carácter actual es una letra o número
        if ((sentence[i] >= 'a' && sentence[i] <= 'z') || (sentence[i] >= 'A' && sentence[i] <= 'Z') || (sentence[i] >= '0' && sentence[i] <= '9')) {
            
            if (!isWord) {
                // Si se encuentra una letra o número y no estamos dentro de una palabra, incrementa el número de palabras
                wordCount++;
                isWord = 1; // Marca que estamos dentro de una palabra
            }
        } else {
            // Si el carácter actual no es una letra o número, marca que no estamos dentro de una palabra
            isWord = 0;
        }
    }

    cambiar(sentence);

    // Muestra el número de palabras
    printf("There are %d words in \"%s\"", wordCount, sentence);

    return 0;
}
