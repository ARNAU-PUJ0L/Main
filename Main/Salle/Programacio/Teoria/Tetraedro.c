#include <math.h>  // Cal compilar amb -lm


int main () {
        float aresta;
        float area, altura, volum;
        int opcio;

        // Demanar l'aresta.
        printf("Valor de l'aresta:");
        scanf("%f", &aresta);

        printf("1. Calcular area.\n");
        printf("2. Calcular altura.\n");
        printf("3. Calcular volum.\n");
        printf("Opcio: ");
        scanf("%d", &opcio);

        switch(opcio) {
                case 1:
                        area = sqrt(3) / 4 * pow(aresta,2);
                        printf("Area = %f\n", area);
                        break;
                case 2:
                        altura = sqrt(2/3) * aresta;
                        printf("Altura = %f\n", altura);
                        break;
                case 3:
                        volum = pow(aresta, 3) / (6 * sqrt(2));
                        printf("Volum = %f\n", volum);
                        break;
                default:
                        printf("L'opció triada no és correcta.\n");
        }

        return 0;
}