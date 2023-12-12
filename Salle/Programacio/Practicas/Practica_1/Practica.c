#include <stdio.h>
#include <stdlib.h>

char alpha_floor = 'G';
char beta_floor = 'G';
char gamma_floor = 'G';

int alpha_distance = 0;
int beta_distance = 0;
int gamma_distance = 0;

int floor_to_int(char floor) {
    switch (floor) {
        case 'B': return 0;
        case 'G': return 1;
        case 'A': return 8;
        default: return floor - '0' + 1;
    }
}





char request_elevator(char from) {


    int user_floor = floor_to_int(from);

    int alpha_diff = abs(user_floor - floor_to_int(alpha_floor));
    int beta_diff = abs(user_floor - floor_to_int(beta_floor));
    int gamma_diff = abs(user_floor - floor_to_int(gamma_floor));

    char selected_elevator = 'A';
    int min_diff = alpha_diff;
    int min_distance = alpha_distance;

    if (beta_diff < min_diff || (beta_diff == min_diff && beta_distance < min_distance)) {
        selected_elevator = 'B';
        min_diff = beta_diff;
        min_distance = beta_distance;
    }

    if (gamma_diff < min_diff || (gamma_diff == min_diff && gamma_distance < min_distance)) {
        selected_elevator = 'G';
    }

    return selected_elevator;
}




void move_elevator(char elevator, char to) {



    int to_floor = floor_to_int(to);

    switch (elevator) {
        case 'A':
            alpha_distance += abs(floor_to_int(alpha_floor) - to_floor);
            alpha_floor = to;
            break;
        case 'B':
            beta_distance += abs(floor_to_int(beta_floor) - to_floor);
            beta_floor = to;
            break;
        case 'G':
            gamma_distance += abs(floor_to_int(gamma_floor) - to_floor);
            gamma_floor = to;
            break;
    }
}






int option_A() {

    
    char from, to;

    do {

        printf("From? ");
        scanf(" %c", &from);

    }while (from != '1' && from != '2' && from != '3' && from != '4' && from != '5' && from != 'A' && from != 'B' && from != 'G');


    do {

        printf("To? ");
        scanf(" %c", &to);

    }while (to != '1' && to != '2' && to != '3' && to != '4' && to != '5' && to != 'A' && to != 'B' && to != 'G');


    char selected_elevator = request_elevator(from);
    printf("Elevator %c is coming.\n\n", selected_elevator);

    move_elevator(selected_elevator, to);


}





int main() {
    
    
    
    
    char option;

    printf("Welcome to our building!\n\n");

    do {
        printf("A. Use Elevator | B. Statistic | C. Elevator inspection | Q. Quit\n");
        printf("Enter option: ");
        scanf(" %c", &option);

        while (option != 'A' && option != 'a' && option != 'B' && option != 'b' && option != 'C' && option != 'c' && option != 'Q' && option != 'q' ){

            printf("(ERROR) Invalid option\n\n");
            printf("A. Use Elevator | B. Statistic | C. Elevator inspection | Q. Quit\n");
            printf("Enter option: ");
            scanf(" %c", &option);
        }

        switch (option) {
            case 'a':
            case 'A':

                option_A();


            case 'b':
            case 'B':

            case 'c':
            case 'C':

            case 'q':
            case 'Q':

                printf("See you later!\n");
                break;
        }

    } while (option != 'q' && option != 'Q');

    return 0;
}