#include <stdio.h>
#include <string.h>

#define MAX_LINE_LENGTH 1000
#define MAX_PALABRA_LENGTH 50

int main() {
    char palabra[MAX_PALABRA_LENGTH];
    printf("Ingrese una palabra para buscar en el archivo: ");
    scanf("%s", palabra);

    FILE *archivo = fopen("data.txt", "r");
    if (archivo == NULL) {
        printf("No se pudo abrir el archivo.\n");
        return 1;
    }

    char linea[MAX_LINE_LENGTH];
    char palabra_actual[MAX_PALABRA_LENGTH];
    int i, j;
    while (fgets(linea, MAX_LINE_LENGTH, archivo) != NULL) {
        i = 0;
        j = 0;
        while (linea[i] != '\0') {
            while (linea[i] == ' ' || linea[i] == '\t') // Ignorar espacios en blanco y tabulaciones
                i++;
            j = 0;
            while (linea[i] != ' ' && linea[i] != '\t' && linea[i] != '\n' && linea[i] != '\0') { // Construir la palabra actual
                palabra_actual[j] = linea[i];
                i++;
                j++;
            }
            palabra_actual[j] = '\0'; // Agregar terminador de cadena
            if (strcmp(palabra_actual, palabra) == 0) { // Comparar la palabra actual con la palabra buscada
                printf("%s", linea); // Si son iguales, imprime la línea completa
                break;
            }
        }
    }

    fclose(archivo);
    return 0;
}
