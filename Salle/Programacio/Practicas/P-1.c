#include <stdio.h>
#include <stdlib.h>

char option;
char from, to;
int posicion_inicial_alpha, posicion_final_alpha, recorrido_alpha;
int posicion_inicial_beta, posicion_final_beta, recorrido_beta;
int posicion_inicial_gamma, posicion_final_gamma, recorrido_gamma;








int option_1 (){

    char from, to;
    
    printf("From ? ");
    scanf(" %c", &from);

    while (from != '1' && from != '2' && from != '3' && from != '4' && from != '5' && from != 'A' && from != 'B' && from != 'G'){

        printf("From ? ");
        scanf(" %c", &from);
    }

    printf("To ? ");
    scanf(" %c", &to);

    while (to != '1' && to != '2' && to != '3' && to != '4' && to != '5' && to != 'A' && to != 'B' && to != 'G'){

        printf("To ? ");
        scanf(" %c", &to);
    }

    posicion_inicial_alpha = 2;
    posicion_final_alpha = to;
    recorrido_alpha = posicion_final_alpha - posicion_inicial_alpha;


    printf("Pf: %d Rec %d", posicion_final_alpha, recorrido_alpha);

}




int menu(){


    printf("A. Use Elevator | B. Statistic | C. Elevator inspection | Q. Quit\n");
    
    printf("Enter option: ");
    scanf(" %c", &option);
}









int main(){

    printf("Welcome to our building! \n \n");

    menu();

    while (option != 'a' && option != 'A' && option != 'b' && option != 'B' && option != 'c' && option != 'C' && option != 'q' && option != 'Q' ){
       
       printf("(ERROR) Invalid option\n\n");
       
        menu();
    }

    option_1();



}