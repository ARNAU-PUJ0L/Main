#include <stdio.h>

int num1, num2, num3;

int pedir_num(){

    printf("Introduce un num entero positivo: ");
    scanf("%d", &num1);

    printf("Introduce un num entero positivo: ");
    scanf("%d", &num2);

    printf("Introduce un num entero positivo: ");
    scanf("%d", &num3);

}

int mayor_num(){


    if (num1 > num2 && num1 > num3 ){

        printf("%d", num1);

    }

    if (num2 > num1 && num2 > num3){

        printf("%d", num2);

    }


    if (num3 > num1 && num3 > num2){

        printf("%d", num3);

    }


    


}




int main(){

    pedir_num();

    while (num1 < 0  || num2 < 0 || num3 < 0){

        printf("Has introduit un valor negatiu \n");

        pedir_num();
    
    }

    mayor_num();


    return 0;
}

