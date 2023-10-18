#include <stdio.h>

int main() {
    char nombre[50];  // Creamos un arreglo de caracteres para almacenar el nombre (puedes ajustar el tamaño)
    int edad;

    // Solicitamos el nombre al usuario
    printf("Por favor, introduce tu nombre: ");
    scanf("%s", nombre);

    // Solicitamos la edad al usuario
    printf("Ahora, introduce tu edad: ");
    scanf("%d", &edad);

    // Mostramos el nombre y la edad en pantalla
    printf("Tu nombre es: %s\n", nombre);
    printf("Tienes %d años de edad.\n", edad);

    return 0;
}
