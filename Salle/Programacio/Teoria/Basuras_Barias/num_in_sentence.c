#include <stdio.h>

#define MAX 50

int main() {
    int suma = 0;
    float result;
    int num_numbers = 0;
    char word[MAX];

    printf("Input: ");
    scanf("%s", word);

    for (int i = 0; word[i] != '\0'; i++) {
        switch (word[i]) {
            case '1':
            case '2':
            case '3':
            case '4':
            case '5':
            case '6':
            case '7':
            case '8':
            case '9':
                suma += word[i] - '0';
                num_numbers++;
                break;
        }
    }

    if (num_numbers > 0) {
        result = (float)suma / num_numbers;
    } else {
        result = 0.00;
    }

    printf("%.2f\n", result);

    return 0;
}
