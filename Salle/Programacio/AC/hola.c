#include <stdio.h>

int esPrimo(int num) {
    if (num <= 1) {
        return 0;
    }

    for (int i = 2; i * i <= num; i++) {
        if (num % i == 0) {
            return 0;
        }
    }

    return 1;
}

int sumaDigitosCentrales(int num) {
    int tercer_digito = (num / 100) % 10;
    int segundo_digito = (num / 10) % 10;
    return segundo_digito + tercer_digito;
}

int solicitarNumero() {
    int numero;

    while (1) {
        printf("Number? ");
        scanf("%d", &numero);

        if (numero >= 1000 && numero <= 9999 && esPrimo(numero)) {
            break;
        }
    }

    return numero;
}

int main() {
    int numero = solicitarNumero();

    if (sumaDigitosCentrales(numero) == 10) {
        printf("Center adds up to 10\n");
    }

    return 0;
}
