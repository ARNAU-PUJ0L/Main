#include <stdio.h>

char obtenerAscensorCercano(int ascensores[], int num_ascensores, int planta_origen) {
    char ascensor_cercano = 'a';
    int distancia_cercana = planta_origen - ascensores[0];

    if (distancia_cercana < 0) {
        distancia_cercana = -distancia_cercana;
    }

    for (int i = 1; i < num_ascensores; ++i) {
        int distancia_actual = planta_origen - ascensores[i];

        if (distancia_actual < 0) {
            distancia_actual = -distancia_actual;
        }

        if (distancia_actual < distancia_cercana) {
            ascensor_cercano = 'a' + i;  // Convertir índice a letra ('a', 'b', 'c')
            distancia_cercana = distancia_actual;
        }
    }

    return ascensor_cercano;
}

int test(){
    int ascensores[] = {0, 0, 0};  // Las posiciones iniciales de los ascensores (alpha, beta, gamma)
    int num_ascensores = sizeof(ascensores) / sizeof(ascensores[0]);

    int planta_origen, planta_destino;

    while (1) {
        // Pregunta al usuario por la planta actual y destino
        printf("From? ");
        scanf("%d", &planta_origen);

        while (planta_origen < '1' || (planta_origen > '5' && planta_origen != 'A' && planta_origen != 'B' && planta_origen != 'G')) {
            printf("From ? ");
            scanf(" %c", &planta_origen);
    }


        if (planta_origen == -1) {
            break;
        }

        printf("To? ");
        scanf("%d", &planta_destino);

        while (planta_destino < '1' || (planta_destino > '5' && planta_destino != 'A' && planta_destino != 'B' && planta_destino != 'G')) {
            printf("To ? ");
            scanf(" %c", &planta_destino);
    }

        if (planta_origen == planta_destino) {
            printf("(ERROR) Are you joking?\n\n");
            break;
        }

        // Determina el ascensor más cercano
        char ascensor_cercano = obtenerAscensorCercano(ascensores, num_ascensores, planta_origen);

        // Muestra información y actualiza la posición del ascensor
        printf("Usando ascensor %c.\n", ascensor_cercano);
        ascensores[ascensor_cercano - 'a'] = planta_destino;

        // Muestra información actualizada de los ascensores
        printf("Estado de los ascensores:\n");
        for (int i = 0; i < num_ascensores; ++i) {
            printf("Ascensor %c en planta %d\n", 'a' + i, ascensores[i]);
        }
    }
}






/*
void option1(char from, char to) {

    char from, to;

    printf("From ? ");
    scanf(" %c", &from);

    while (from < '1' || (from > '5' && from != 'A' && from != 'B' && from != 'G')) {
        printf("From ? ");
        scanf(" %c", &from);
    }

    printf("To ? ");
    scanf(" %c", &to);

    while (to < '1' || (to > '5' && to != 'A' && to != 'B' && to != 'G')) {
        printf("To ? ");
        scanf(" %c", &to);
    }

    if (from == to) {
        printf("(ERROR) Are you joking?\n\n");
    }
}*/


// no tocar

int main() {
    char option;

    printf("Welcome to our building!\n\n");

    do {
        printf("A. Use Elevator | B. Statistic | C. Elevator inspection | Q. Quit\n");
        printf("Enter option: ");
        scanf(" %c", &option);

        while (option < 'a' || (option > 'c' && option != 'q' && option != 'Q')) {
            printf("(ERROR) Invalid option\n\n");
            printf("Enter option: ");
            scanf(" %c", &option);
        }

        switch (option) {
            case 'a':
            case 'A':
                test();

                break;

            case 'b':
            case 'B':

                break;
            case 'c':
            case 'C':

                break;
            case 'q':
            case 'Q':

                printf("See you later!\n");
                break;
        }

    } while (option != 'q' && option != 'Q');

    return 0;
}
