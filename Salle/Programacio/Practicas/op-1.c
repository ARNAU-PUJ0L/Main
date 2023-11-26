#include <stdio.h>
#include <stdlib.h>

int main() {
    int posicion_inicial = 0;

    while (1) {  // Bucle infinito
        int planta_destino;
        
        printf("Ingrese la planta de destino (1-8): ");
        scanf("%d", &planta_destino);

        // Validación de la entrada
        if (planta_destino < 1 || planta_destino > 8) {
            printf("(ERROR) Planta no válida. Inténtelo de nuevo.\n");
            continue;  // Vuelve al inicio del bucle
        }

        // Cálculo del recorrido y posición final
        int recorrido = abs(planta_destino - posicion_inicial);
        int posicion_final = planta_destino;

        // Impresión de resultados
        printf("Planta de origen: %d\n", posicion_inicial);
        printf("Planta de destino: %d\n", planta_destino);
        printf("Recorrido realizado: %d\n", recorrido);
        printf("Posición final del ascensor: %d\n\n", posicion_final);

        // La posición inicial para la siguiente iteración será la posición final de la actual
        posicion_inicial = posicion_final;
    }

    return 0;
}
