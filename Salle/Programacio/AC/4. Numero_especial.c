#include <stdio.h>



int num_primo(int num) {

    if (num <= 1) {
        return 0;
    }

    for (int i = 2; i * i <= num; i++) {
        if (num % i == 0)

            return 0;
        }

    return 1;
}





int digitos(int num) {

    int contadorDigitos = 0;

    if (num == 0) {
        contadorDigitos = 1;
    } else {
        int i = num;
        while (i != 0) {
            i = i / 10;
            contadorDigitos++;
        }
    }

    return contadorDigitos;
}

int suma_digitos(int num) {

    int segundo_digito, tercer_digito;

    segundo_digito = (num / 100) % 10;
    tercer_digito = (num / 10) % 10;

    return segundo_digito + tercer_digito;
}

int main() {

    int numero;  

    printf("Number? ");
    scanf("%d", &numero);


    digitos(numero);
    num_primo(numero);
    suma_digitos(numero);


    if (num_primo(numero) == 1 && suma_digitos(numero) == 10 && digitos(numero)){
        
        printf("Center adds up to 10\n");
        return 0;
    }


    while(digitos(numero) != 4){

        printf("Number? ");
        scanf("%d", &numero);
        digitos(numero);
    }

    for(int i = 0; i < 1; i++){

        printf("Number? ");
        scanf("%d", &numero);
        
        num_primo(numero);
        suma_digitos(numero);

        if (num_primo(numero) == 1 && suma_digitos(numero) == 10){

            printf("Center adds up to 10\n");

        }

    }









    return 0;
}
