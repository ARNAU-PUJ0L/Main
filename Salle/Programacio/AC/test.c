#include <stdio.h>

// Función para verificar si un número es primo
int esPrimo(int num) {
    if (num <= 1) {
        return 0;  // No es primo
    }

    for (int i = 2; i * i <= num; i++) {
        if (num % i == 0) {
            return 0;  // No es primo
        }
    }

    return 1;  // Es primo
}

// Función para calcular la suma de los dígitos centrales
int sumaDigitosCentrales(int num) {
    int tercer_digito = (num / 100) % 10;
    int segundo_digito = (num / 10) % 10;
    return segundo_digito + tercer_digito;
}

int main() {
    int numero;

    do {
        // Entrada del usuario
        printf("Number? ");
        scanf("%d", &numero);

        // Verificar si el número tiene cuatro cifras
        if (numero < 1000 || numero > 9999) {
            printf("El numero debe tener cuatro cifras.\n");
            continue;  // Volver a solicitar la entrada del usuario
        }

        // Verificar si el número es primo
        if (!esPrimo(numero)) {
            printf("El numero no es primo.\n");
            continue;  // Volver a solicitar la entrada del usuario
        }

        // Verificar si la suma de los dígitos centrales es igual a 10
        if (sumaDigitosCentrales(numero) == 10) {
            printf("Center adds up to 10\n");
        } else {
            printf("La suma de los digitos centrales no es igual a 10. Inténtalo de nuevo.\n");
            continue;  // Volver a solicitar la entrada del usuario
        }

        break;  // Salir del bucle si todas las condiciones se cumplen

    } while (1);  // Bucle infinito, se sale con 'break' cuando se cumplen todas las condiciones

    return 0;  // Salir del programa sin errores
}
