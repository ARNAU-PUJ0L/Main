#include <stdio.h>

int route_alpha, route_beta, route_gamma = 0;
char from, to, option;
int start, end;


int route(){
    
    switch (from){

        case '1':
            start = 1;

        case '2':
            start = 2;

        case '3':
            start = 3;

        case '4':
            start = 4;
            printf ("%d", start);

        case '5': 
            start = 5;

        case 'A':
            start = 6;

        case 'B':
            start = -1;

        case 'G':
            start = 0;
        }

    switch (to){

        case '1':
            end = 1;

        case '2':
            end = 2;

        case '3':
            end = 3;

        case '4':
            end = 4;

        case '5': 
            end = 5;

        case 'A':
            end = 6;

        case 'B':
            end = -1;

        case 'G':
            end = 0;
                
        }
    
    if (route_alpha <= route_beta && route_alpha <= route_gamma){
    
        route_alpha = end - start;
        printf("%d", route_alpha);
    
    }else if (route_beta < route_alpha && route_beta <= route_gamma){

        route_beta = end - start;
        printf("%d", route_beta);

    }else{

        route_gamma = end - start;
        printf("%d", route_gamma);

    }

    if(start == end){

        printf("(ERROR) Are you joking?");

    }


}


int option_1 (){

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

    route();


}







//int option_2(){}

/*    
    route_alpha = end - start;

    route_beta = end - start;
    
    route_gamma = end - start;    
    
*/

//int option_3(){}






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

    switch (option){
        
        case 'A':
        case 'a':
            option_1();
/*
        case 'B':
        case 'b':
          //  option_2();

        case 'C':
        case 'c':
            //option_3();

        case 'q':
        case 'Q':
            //printf("\n\nSee you later!");
  */  }

}