#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_TEXT_LENGTH 1000
#define MAX_WORD_LENGTH 50
#define NUM_STOP_WORDS 33

// Function to check if a word is a stop word
int isStopWord(char word[MAX_WORD_LENGTH], char stop_words[NUM_STOP_WORDS][MAX_WORD_LENGTH]) {
    int i;
    int found = 0;
    for (i = 0; i < NUM_STOP_WORDS; i++) {
        if (strcmp(word, stop_words[i]) == 0) {
            found = 1; // Word is a stop word
            break;
        }
    }
    return found;
}

// Function to remove punctuation from a string
void removePunctuation(char text[MAX_TEXT_LENGTH]) {
    int i, j = 0;
    char result[MAX_TEXT_LENGTH];
    for (i = 0; text[i] != '\0'; i++) {
        // Preserve apostrophes
        if ((text[i] >= 'A' && text[i] <= 'Z') || (text[i] >= 'a' && text[i] <= 'z') || text[i] == ' ' || text[i] == '\'') {
            result[j++] = text[i];
        }
    }
    result[j] = '\0';
    strcpy(text, result);
}

// Function to convert a string to lowercase
void toLowerCase(char text[MAX_TEXT_LENGTH]) {
    int i;
    for (i = 0; text[i] != '\0'; i++) {
        if (text[i] >= 'A' && text[i] <= 'Z') {
            text[i] = text[i] + 32; // Convert to lowercase
        }
    }
}

int main() {
    char text[MAX_TEXT_LENGTH];
    char stop_words[NUM_STOP_WORDS][MAX_WORD_LENGTH] = {"a", "an", "and", "are", "as", "at", "be", "but", "by", "for", "if", "in", "into", "is", "it", "no", "not", "of", "on", "or", "such", "that", "the", "their", "then", "there", "these", "they", "this", "to", "was", "will", "with"};
    char word[MAX_WORD_LENGTH] = ""; // Initialize as an empty string

    printf("Insert original text: ");


    // Read original text
    fgets(text, MAX_TEXT_LENGTH, stdin);

    // Remove \n if exists
    if (text[strlen(text) - 1] == '\n') {
        text[strlen(text) - 1] = '\0';
    }

    // Check if the text is empty
    if (strlen(text) == 0) {
        printf("Text is empty.\n");
        return 0;
    }

    // Remove punctuation from the text
    removePunctuation(text);

    // Convert to lowercase
    toLowerCase(text);

    // Split text into words and remove stop words
    printf("Clean text:\n");
    for (int i = 0; text[i] != '\0'; i++) {
        if (text[i] == ' ') {
            if (!isStopWord(word, stop_words)) {
                printf("%s ", word);
            }
            memset(word, 0, sizeof(word)); // Reset word to an empty string
        } else {
            strncat(word, &text[i], 1);
        }
    }

    // Check the last word after the loop
    if (!isStopWord(word, stop_words)) {
        printf("%s ", word);
    }

    return 0;
}
