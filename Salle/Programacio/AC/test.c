#include <stdio.h>
#include <stdlib.h>

#define NUM_ASCENSORES 3
#define NUM_PLANTAS 8

typedef struct {
    char nombre;
    int planta_actual;
    int plantas_recorridas;
} Ascensor;

void inicializarAscensores(Ascensor ascensores[]) {
    ascensores[0].nombre = 'A';
    ascensores[1].nombre = 'B';
    ascensores[2].nombre = 'G';

    for (int i = 0; i < NUM_ASCENSORES; ++i) {
        ascensores[i].planta_actual = 1;
        ascensores[i].plantas_recorridas = 0;
    }
}

int absDiff(int a, int b) {
    return abs(a - b);
}

int main() {
    Ascensor ascensores[NUM_ASCENSORES];
    inicializarAscensores(ascensores);

    int planta_usuario, planta_destino;
    printf("Ingrese su planta actual (1-%d): ", NUM_PLANTAS);
    scanf("%d", &planta_usuario);

    if (planta_usuario < 1 || planta_usuario > NUM_PLANTAS) {
        printf("La planta ingresada no es válida.\n");
        return 1;
    }

    printf("Ingrese su planta de destino (1-%d): ", NUM_PLANTAS);
    scanf("%d", &planta_destino);

    if (planta_destino < 1 || planta_destino > NUM_PLANTAS) {
        printf("La planta de destino ingresada no es válida.\n");
        return 1;
    }

    int ascensor_elegido = 0; // Índice del ascensor más cercano

    for (int i = 1; i < NUM_ASCENSORES; ++i) {
        // Selección del ascensor más cercano según las reglas dadas
        if (absDiff(ascensores[i].planta_actual, planta_usuario) <
            absDiff(ascensores[ascensor_elegido].planta_actual, planta_usuario)) {
            ascensor_elegido = i;
        } else if (absDiff(ascensores[i].planta_actual, planta_usuario) ==
                   absDiff(ascensores[ascensor_elegido].planta_actual, planta_usuario)) {
            if (ascensores[i].plantas_recorridas < ascensores[ascensor_elegido].plantas_recorridas) {
                ascensor_elegido = i;
            } else if (ascensores[i].plantas_recorridas == ascensores[ascensor_elegido].plantas_recorridas) {
                // En caso de empate, se selecciona preferiblemente en el siguiente orden: alpha, beta, gamma
                if (ascensores[i].nombre == 'A' && ascensores[ascensor_elegido].nombre != 'A') {
                    ascensor_elegido = i;
                } else if (ascensores[i].nombre == 'B' && ascensores[ascensor_elegido].nombre == 'G') {
                    ascensor_elegido = i;
                }
            }
        }
    }

    // Simular el movimiento del ascensor elegido
    ascensores[ascensor_elegido].plantas_recorridas += absDiff(ascensores[ascensor_elegido].planta_actual, planta_usuario) +
                                                      absDiff(planta_usuario, planta_destino);
    ascensores[ascensor_elegido].planta_actual = planta_destino;

    printf("El ascensor %c se ha seleccionado para su viaje.\n", ascensores[ascensor_elegido].nombre);

    return 0;
}
