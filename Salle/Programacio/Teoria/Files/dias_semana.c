#include <stdio.h>
#include <string.h>

void extractFirstWord(char dst[20], char phrase[100]) {
    int i = 0;

    while (phrase[i] != ' ' && phrase[i] != '\0') {
        dst[i] = phrase[i];
        i++;
    }
    
    dst[i] = '\0';
}

int main() {
    char filename[16];
    char day[20];
    char phrase[100];
    char first_word[20];
    
    FILE *f;
    
    scanf("%s", filename);
    
    f = fopen(filename, "r");
    
    if (f != NULL) {
        scanf("%s", day);
        
        fgets(phrase, 100, f);
        phrase[strlen(phrase) - 1] = '\0';
        
        while (!feof(f)) {
            extractFirstWord(first_word, phrase);
            if (strcmp(day, first_word) == 0 && strcmp(day, "ALL") != 0) {
                printf("%s\n", phrase);
            }
            if (strcmp(day, "ALL") == 0) {
                printf("%s\n", phrase);
            }
            
            fgets(phrase, 100, f);
            phrase[strlen(phrase) - 1] = '\0';
        }

        fclose(f);
    } else {
        printf("File not found");
    }
    
    return 0;
}