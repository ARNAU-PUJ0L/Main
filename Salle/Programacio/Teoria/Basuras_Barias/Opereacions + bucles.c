#include <stdio.h>
#include <math.h>


int main (){

    char opcio;
    int x, y, resultat;

    while (opcio != 'd' || opcio != 'D'){
        
        printf("a - Calcular la potencia d'un num ");
        printf("b - Calcular la factoria d'un num ");
        printf("c - Indica si el num es primer ");
        printf("d - Sortir del programa");

        scanf(" %c", &opcio);

        if(opcio == 'a' || opcio == 'A'){

            printf("Introdueix un valor: ");
            scanf("%d", &x);

            printf("Introdueix un valor: ");
            scanf("%d", &y);

            resultat = pow(x, y);

            printf("%d", resultat);

        }

        if(opcio == 'b' || opcio == 'B'){

            printf("Introdueix un valor: ");
            scanf("%d", &x);

            resultat = !x;

            printf("%d", resultat);

        }

        if(opcio == 'c'){

            printf("Introdueix un valor: ");
            scanf("%d", &x);

            if (x <= 1) {
                return 0; // Los números menores o iguales a 1 no son primos.
            }

            for (int i = 2; i * i <= x; i++) {
                if (x % i == 0) {
                    return 0; // Si es divisible por algún número distinto de 1 y sí mismo, no es primo.
                }
            }
        
        }

        if(opcio == 'd'){

            break;

        }

    }


    return 0;
}