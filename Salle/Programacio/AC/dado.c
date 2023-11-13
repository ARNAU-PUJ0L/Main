#include <stdio.h>


int escoger_caras() {

    int num_caras;

    printf("Indroduce el numero de caras del dado: ");
    scanf("%d", &num_caras);
}


int tirar_dado(){
    
    int num_caras;

    printf("Indroduce el numero de caras del dado: ");
    scanf("%d", &num_caras);

}



int main(){

    char continuar = "s";

    while(continuar = "s"){

        printf("Quieres volver a tirar? (s/n): ");
        scanf(" %c", &continuar);

        if (continuar = "s"){

            tirar_dado();
        
        }else{

            break;

        }

    }





}