#include <stdio.h>
    

#define FLOORS_FOR_INSPECTION 12 
#define INSPECTION_PRICE 150


int floor_to_int(char floor) {
    switch (floor) {
        case 'B': return 0;
        case 'G': return 1;
        case 'A': return 7;
        default: return floor - '0' + 1;
    }
}


int main(){

    char option;
    char from, to;

    char alpha_floor = 'G';
    char beta_floor = 'G';
    char gamma_floor = 'G';

    int alpha_distance = 0;
    int beta_distance = 0;
    int gamma_distance = 0;

    int diff_distance_alpha = 0;
    int diff_distance_beta = 0;
    int diff_distance_gamma = 0;

    int alpha_plants_travelled = 0;
    int alpha_num_trips = 0;
    int alpha_num_trips_up = 0;
    int alpha_num_trips_down = 0;

    int beta_plants_travelled = 0;
    int beta_num_trips = 0;   
    int beta_num_trips_up = 0;
    int beta_num_trips_down = 0;

    int gamma_plants_travelled = 0;
    int gamma_num_trips = 0;
    int gamma_num_trips_up = 0;
    int gamma_num_trips_down = 0;

    char do_inspection;

    int alpha_price_repare = 0;
    int beta_price_repare = 0;
    int gamma_price_repare = 0;


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

        if(option == 'A' || option == 'a'){



            /// -----------------------------OPION A----------------------------------

                printf("\n");

                do {

                    printf("From? ");
                    scanf(" %c", &from);

                }while (from != '1' && from != '2' && from != '3' && from != '4' && from != '5' && from != 'A' && from != 'B' && from != 'G');


                do {

                    printf("To? ");
                    scanf(" %c", &to);

                }while (to != '1' && to != '2' && to != '3' && to != '4' && to != '5' && to != 'A' && to != 'B' && to != 'G');

              
                while((from == to) && (option == 'a' || option == 'A')){

                    printf("(ERROR) Are you joking?\n\n");

                    printf("A. Use Elevator | B. Statistic | C. Elevator inspection | Q. Quit\n");
                    printf("Enter option: ");
                    scanf(" %c", &option);

                    while (option != 'A' && option != 'a' && option != 'B' && option != 'b' && option != 'C' && option != 'c' && option != 'Q' && option != 'q' ){

                        printf("(ERROR) Invalid option\n\n");
                        printf("A. Use Elevator | B. Statistic | C. Elevator inspection | Q. Quit\n");
                        printf("Enter option: ");
                        scanf(" %c", &option);
                    }


                    if(option == 'A' || option == 'a'){

                        printf("\n");

                        do {

                            printf("From? ");
                            scanf(" %c", &from);

                        }while (from != '1' && from != '2' && from != '3' && from != '4' && from != '5' && from != 'A' && from != 'B' && from != 'G');


                        do {

                            printf("To? ");
                            scanf(" %c", &to);

                        }while (to != '1' && to != '2' && to != '3' && to != '4' && to != '5' && to != 'A' && to != 'B' && to != 'G');

                    }

                }

                if(from != to){

                    // SELECT ELEVATOR
                    
                    int user_floor = floor_to_int(from);
                    int alpha_diff, beta_diff, gamma_diff;

                    int diference_alpha = user_floor - floor_to_int(alpha_floor);
                    int diference_beta = user_floor - floor_to_int(beta_floor);
                    int diference_gamma = user_floor - floor_to_int(gamma_floor);


                    if (diference_alpha > 0){
                        alpha_diff = diference_alpha;
                    }else{
                        alpha_diff = diference_alpha * -1;
                    }

                    if (diference_beta > 0){
                        beta_diff = diference_beta;
                    }else{
                        beta_diff = diference_beta * -1; 
                    }

                    if (diference_gamma > 0){
                        gamma_diff = diference_gamma;
                    }else{
                        gamma_diff = diference_gamma * -1;
                    }


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


                    // Print Select elevator

                    if (selected_elevator == 'A'){
                        printf("Elevator Alpha assigned\n");
                    }

                    if(selected_elevator == 'B'){
                        printf("Elevator Beta assigned\n");
                    }

                    if(selected_elevator == 'G'){
                        printf("Elevator Gamma assigned\n");
                    }



                    // MOVE ELEVATOR

                    int from_int = floor_to_int(from);
                    int to_int = floor_to_int(to);
                    
                    int alpha_position_int = floor_to_int(alpha_floor);
                    int beta_position_int = floor_to_int(beta_floor);
                    int gamma_position_int = floor_to_int(gamma_floor);

                    switch (selected_elevator) {
                        
                        case 'A':
                            
                            diff_distance_alpha = floor_to_int(alpha_floor) - to_int;

                            if(diff_distance_alpha > 0){
                                alpha_distance = diff_distance_alpha;
                            }else{
                                alpha_distance = diff_distance_alpha * (-1);
                            }

                        
                        // IMPRIMIR RECORRIDO ALPHA

                            if(from_int < to_int) {


                                //apha_position  -> from
                                
                                // FIX ERROR
                                for (int i = alpha_position_int; i >= from_int; i--){

                                    if(from_int != alpha_position_int){

                                        if(i == 0){
                                            printf("B");

                                            if(!(i <= from_int)){
                                                printf("..");
                                            }
                                        }

                                        if (i == 1) {
                                            printf("G");

                                            if (!(i <= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if(i == 2){
                                            printf("1");

                                            if(!(i <= from_int)){
                                                printf("..");
                                            }
                                        }

                                        if(i == 3){
                                            printf("2");

                                            if(!(i <= from_int)){
                                                printf("..");
                                            }
                                        }

                                        if (i == 4) {
                                            printf("3");

                                            if (!(i <= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if (i == 5) {
                                            printf("4");

                                            if (!(i <= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if (i == 6) {
                                            printf("5");

                                            if (!(i <= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if (i == 7) {
                                            printf("A");

                                            if (!(i <= from_int - 1)) {
                                                printf("..");
                                            }
                                        }                     
                                    
                                    }
                                    
                                }




                                for(int i = alpha_position_int; i <= from_int; i++ ){

                                    if (from_int != alpha_position_int){

                                        if (i == 0) {                    
                                            printf("B");

                                            if (!(i >= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if (i == 1) {
                                            printf("G");

                                            if (!(i >= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if (i == 2) {
                                            printf("1");

                                            if (!(i >= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if (i == 3) {
                                            printf("2");

                                            if (!(i >= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if (i == 4) {
                                            printf("3");

                                            if (!(i >= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if (i == 5) {
                                            printf("4");

                                            if (!(i >= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if (i == 6) {
                                            printf("5");

                                            if (!(i >= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if (i == 7) {
                                            printf("A");

                                            if (!(i >= from_int)) {
                                                printf("..");
                                            }
                                        }

                                    }

                                }



                                if(from_int != alpha_position_int){
                                    printf(" ");
                                }
                                printf("Going up!");

                                printf(" ");



                            
                                for(int i = from_int; i <= to_int; i++) {

                                    if (i == 0){
                                        printf("B");
                                            
                                        if(!(i >= to_int)){
                                            printf("..");
                                        }
                                    }

                                    if (i == 1){
                                        printf("G");

                                        if(!(i >= to_int)){
                                            printf("..");
                                        }
                                    }    

                                    if (i == 2){
                                        printf("1");
                                            
                                        if(!(i >= to_int)){
                                            printf("..");
                                        }
                                    }

                                    if (i == 3){
                                        printf("2");
                                            
                                        if(!(i >= to_int)){
                                            printf("..");
                                        }
                                    }

                                    if(i == 4){
                                        printf("3");
                                            
                                        if(!(i >= to_int)){
                                            printf("..");
                                        }
                                    }                            
                                    
                                    if (i == 5){
                                        printf("4");
                                            
                                        if(!(i >= to_int)){
                                            printf("..");
                                        }
                                    }
                                    
                                    if (i == 6){
                                        printf("5");
                                            
                                        if(!(i >= to_int)){
                                            printf("..");
                                        }
                                    }
                                    
                                    if (i == 7){
                                        printf("A");
                                            
                                        if(!(i >= to_int - 1)){
                                            printf("..");
                                        }
                                    }

                                }

                                alpha_num_trips_up++;


                                int suma = to_int - from_int;

                                if(suma > 0){
                                    suma = suma;
                                }else{
                                    suma = suma * (-1);
                                }

                                alpha_plants_travelled = alpha_plants_travelled + suma;


                            } else {

                                // BAJADA

                                // FIX ERROR PA > From > To

                            for (int i = alpha_position_int; i >= from_int; i--){

                                    if(from_int != alpha_position_int){

                                        if(i == 0){
                                            printf("B");

                                            if(!(i <= from_int)){
                                                printf("..");
                                            }
                                        }

                                        if (i == 1) {
                                            printf("G");

                                            if (!(i <= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if(i == 2){
                                            printf("1");

                                            if(!(i <= from_int)){
                                                printf("..");
                                            }
                                        }

                                        if(i == 3){
                                            printf("2");

                                            if(!(i <= from_int)){
                                                printf("..");
                                            }
                                        }

                                        if (i == 4) {
                                            printf("3");

                                            if (!(i <= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if (i == 5) {
                                            printf("4");

                                            if (!(i <= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if (i == 6) {
                                            printf("5");

                                            if (!(i <= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if (i == 7) {
                                            printf("A");

                                            if (!(i <= from_int - 1)) {
                                                printf("..");
                                            }
                                        }                     
                                    
                                    }
                                    
                                }


                                for(int i = alpha_position_int; i <= from_int; i++ ){

                                    if (from_int != alpha_position_int){

                                        if (i == 0) {                    
                                            printf("B");

                                            if (!(i >= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if (i == 1) {
                                            printf("G");

                                            if (!(i >= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if (i == 2) {
                                            printf("1");

                                            if (!(i >= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if (i == 3) {
                                            printf("2");

                                            if (!(i >= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if (i == 4) {
                                            printf("3");

                                            if (!(i >= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if (i == 5) {
                                            printf("4");

                                            if (!(i >= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if (i == 6) {
                                            printf("5");

                                            if (!(i >= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if (i == 7) {
                                            printf("A");

                                            if (!(i >= from_int - 1)) {
                                                printf("..");
                                            }
                                        }

                                    }

                                }

                                if(from_int != alpha_position_int){
                                    printf(" ");
                                }

                                printf("Going down!");
                                printf(" ");

                                for(int i = from_int; i >= to_int; i--) {

                                    if (i == 0){
                                        printf("B");
                                            
                                        if(!(i <= to_int)){
                                            printf("..");
                                        }
                                    }

                                    if (i == 1){
                                        printf("G");

                                        if(!(i <= to_int)){
                                            printf("..");
                                        }
                                    }    

                                    if (i == 2){
                                        printf("1");
                                            
                                        if(!(i <= to_int)){
                                            printf("..");
                                        }
                                    }

                                    if (i == 3){
                                        printf("2");
                                            
                                        if(!(i <= to_int)){
                                            printf("..");
                                        }
                                    }

                                    if(i == 4){
                                        printf("3");
                                            
                                        if(!(i <= to_int)){
                                            printf("..");
                                        }
                                    }                            
                                    
                                    if (i == 5){
                                        printf("4");
                                            
                                        if(!(i <= to_int)){
                                            printf("..");
                                        }
                                    }
                                    
                                    if (i == 6){
                                        printf("5");
                                            
                                        if(!(i <= to_int)){
                                            printf("..");
                                        }
                                    }
                                    
                                    if (i == 7){
                                        printf("A");
                                            
                                        if(!(i <= to_int - 1)){
                                            printf("..");
                                        }
                                    }

                                }

                                alpha_num_trips_down++;

                                int suma = from_int - to_int;

                                if(suma > 0){
                                    suma = suma;
                                }else{
                                    suma = suma * (-1);
                                }

                                
                                alpha_plants_travelled = alpha_plants_travelled + suma;

                            }


                            printf("\n\n");

                            

                            alpha_floor = to;
                            
                            break;

                        case 'B':


                            diff_distance_beta = floor_to_int(beta_distance) - to_int;

                            if(diff_distance_beta > 0){
                                beta_distance = diff_distance_beta;
                            }else{
                                beta_distance = diff_distance_beta * (-1);
                            }


                            if(from_int < to_int) {

                                // SUBIDA

                                    //beta_position  -> from

                                for (int i = beta_position_int; i >= from_int; i--){

                                    if(from_int != beta_position_int){

                                        if(i == 0){
                                            printf("B");

                                            if(!(i <= from_int)){
                                                printf("..");
                                            }
                                        }

                                        if (i == 1) {
                                            printf("G");

                                            if (!(i <= from_int)) {
                                                printf("..");
                                            }
                                        }
                                        if(i == 2){
                                            printf("1");

                                            if(!(i <= from_int)){
                                                printf("..");
                                            }
                                        }

                                        if(i == 3){
                                            printf("2");

                                            if(!(i <= from_int)){
                                                printf("..");
                                            }
                                        }

                                        if (i == 4) {
                                            printf("3");

                                            if (!(i <= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if (i == 5) {
                                            printf("4");

                                            if (!(i <= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if (i == 6) {
                                            printf("5");

                                            if (!(i <= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if (i == 7) {
                                            printf("A");

                                            if (!(i <= from_int - 1)) {
                                                printf("..");
                                            }
                                        }    

                                    }
                                }




                                for(int i = beta_position_int; i <= from_int; i++ ){

                                    if (from_int != beta_position_int){

                                        if (i == 0) {                    
                                            printf("B");

                                            if (!(i >= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if (i == 1) {
                                            printf("G");

                                            if (!(i >= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if (i == 2) {
                                            printf("1");

                                            if (!(i >= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if (i == 3) {
                                            printf("2");

                                            if (!(i >= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if (i == 4) {
                                            printf("3");

                                            if (!(i >= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if (i == 5) {
                                            printf("4");

                                            if (!(i >= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if (i == 6) {
                                            printf("5");

                                            if (!(i >= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if (i == 7) {
                                            printf("A");

                                            if (!(i >= from_int)) {
                                                printf("..");
                                            }
                                        }

                                    }

                                }

                                if(from_int != beta_position_int){
                                    printf(" ");
                                }
                                printf("Going up!");

                                printf(" ");
                            
                                for(int i = from_int; i <= to_int; i++) {

                                    if (i == 0){
                                        printf("B");
                                            
                                        if(!(i >= to_int)){
                                            printf("..");
                                        }
                                    }

                                    if (i == 1){
                                        printf("G");

                                        if(!(i >= to_int)){
                                            printf("..");
                                        }
                                    }    

                                    if (i == 2){
                                        printf("1");
                                            
                                        if(!(i >= to_int)){
                                            printf("..");
                                        }
                                    }

                                    if (i == 3){
                                        printf("2");
                                            
                                        if(!(i >= to_int)){
                                            printf("..");
                                        }
                                    }

                                    if(i == 4){
                                        printf("3");
                                            
                                        if(!(i >= to_int)){
                                            printf("..");
                                        }
                                    }                            
                                    
                                    if (i == 5){
                                        printf("4");
                                            
                                        if(!(i >= to_int)){
                                            printf("..");
                                        }
                                    }
                                    
                                    if (i == 6){
                                        printf("5");
                                            
                                        if(!(i >= to_int)){
                                            printf("..");
                                        }
                                    }
                                    
                                    if (i == 7){
                                        printf("A");
                                            
                                        if(!(i >= to_int - 1)){
                                            printf("..");
                                        }
                                    }

                                }
                                
                                int suma = to_int - from_int;


                                if(suma > 0){
                                    suma = suma;
                                }else{
                                    suma = suma * (-1);
                                }

                                beta_plants_travelled = beta_plants_travelled + suma;

                                beta_num_trips_up++;
                            
                            } else {

                                // BAJADA

                            for (int i = beta_position_int; i >= from_int; i--){

                                    if(from_int != beta_position_int){

                                        if(i == 0){
                                            printf("B");

                                            if(!(i <= from_int)){
                                                printf("..");
                                            }
                                        }

                                        if (i == 1) {
                                            printf("G");

                                            if (!(i <= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if(i == 2){
                                            printf("1");

                                            if(!(i <= from_int)){
                                                printf("..");
                                            }
                                        }

                                        if(i == 3){
                                            printf("2");

                                            if(!(i <= from_int)){
                                                printf("..");
                                            }
                                        }

                                        if (i == 4) {
                                            printf("3");

                                            if (!(i <= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if (i == 5) {
                                            printf("4");

                                            if (!(i <= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if (i == 6) {
                                            printf("5");

                                            if (!(i <= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if (i == 7) {
                                            printf("A");

                                            if (!(i <= from_int - 1)) {
                                                printf("..");
                                            }
                                        }                     
                                    
                                    }
                                    
                                }





                                for(int i = beta_position_int; i <= from_int; i++ ){

                                    if (from_int != beta_position_int){

                                        if (i == 0) {                    
                                            printf("B");

                                            if (!(i >= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if (i == 1) {
                                            printf("G");

                                            if (!(i >= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if (i == 2) {
                                            printf("1");

                                            if (!(i >= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if (i == 3) {
                                            printf("2");

                                            if (!(i >= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if (i == 4) {
                                            printf("3");

                                            if (!(i >= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if (i == 5) {
                                            printf("4");

                                            if (!(i >= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if (i == 6) {
                                            printf("5");

                                            if (!(i >= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if (i == 7) {
                                            printf("A");

                                            if (!(i >= from_int - 1)) {
                                                printf("..");
                                            }
                                        }

                                    }

                                }

                                if(from_int != beta_position_int){
                                    printf(" ");
                                }

                                printf("Going down!");
                                printf(" ");

                                for(int i = from_int; i >= to_int; i--) {

                                    if (i == 0){
                                        printf("B");
                                            
                                        if(!(i <= to_int)){
                                            printf("..");
                                        }
                                    }

                                    if (i == 1){
                                        printf("G");

                                        if(!(i <= to_int)){
                                            printf("..");
                                        }
                                    }    

                                    if (i == 2){
                                        printf("1");
                                            
                                        if(!(i <= to_int)){
                                            printf("..");
                                        }
                                    }

                                    if (i == 3){
                                        printf("2");
                                            
                                        if(!(i <= to_int)){
                                            printf("..");
                                        }
                                    }

                                    if(i == 4){
                                        printf("3");
                                            
                                        if(!(i <= to_int)){
                                            printf("..");
                                        }
                                    }                            
                                    
                                    if (i == 5){
                                        printf("4");
                                            
                                        if(!(i <= to_int)){
                                            printf("..");
                                        }
                                    }
                                    
                                    if (i == 6){
                                        printf("5");
                                            
                                        if(!(i <= to_int)){
                                            printf("..");
                                        }
                                    }
                                    
                                    if (i == 7){
                                        printf("A");
                                            
                                        if(!(i <= to_int - 1)){
                                            printf("..");
                                        }
                                    }
                                }


                                beta_num_trips_down++;  

                                int suma = from_int - to_int;


                                if(suma > 0){
                                    suma = suma;
                                }else{
                                    suma = suma * (-1);
                                }

                                beta_plants_travelled = beta_plants_travelled + suma;

                            }
                            printf("\n\n");




                            beta_floor = to;
                            
                            break;

                        case 'G':
                    
                            diff_distance_gamma = floor_to_int(gamma_distance) - to_int;
        
                            if(diff_distance_gamma > 0){
                                gamma_distance = diff_distance_gamma;
                            }else{
                                gamma_distance = diff_distance_gamma * (-1);
                            }


                            if(from_int < to_int) {

                                // SUBIDA

                                    //gamma_position  -> from

                                for (int i = gamma_position_int; i >= from_int; i--){

                                    if(from_int != gamma_position_int){

                                        if(i == 0){
                                            printf("B");

                                            if(!(i <= from_int)){
                                                printf("..");
                                            }
                                        }

                                        if (i == 1) {
                                            printf("G");

                                            if (!(i <= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if(i == 2){
                                            printf("1");

                                            if(!(i <= from_int)){
                                                printf("..");
                                            }
                                        }

                                        if(i == 3){
                                            printf("2");

                                            if(!(i <= from_int)){
                                                printf("..");
                                            }
                                        }

                                        if (i == 4) {
                                            printf("3");

                                            if (!(i <= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if (i == 5) {
                                            printf("4");

                                            if (!(i <= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if (i == 6) {
                                            printf("5");

                                            if (!(i <= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if (i == 7) {
                                            printf("A");

                                            if (!(i <= from_int - 1)) {
                                                printf("..");
                                            }
                                        }    

                                    }
                                }




                                for(int i = gamma_position_int; i <= from_int; i++ ){

                                    if (from_int != gamma_position_int){

                                        if (i == 0) {                    
                                            printf("B");

                                            if (!(i >= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if (i == 1) {
                                            printf("G");

                                            if (!(i >= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if (i == 2) {
                                            printf("1");

                                            if (!(i >= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if (i == 3) {
                                            printf("2");

                                            if (!(i >= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if (i == 4) {
                                            printf("3");

                                            if (!(i >= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if (i == 5) {
                                            printf("4");

                                            if (!(i >= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if (i == 6) {
                                            printf("5");

                                            if (!(i >= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if (i == 7) {
                                            printf("A");

                                            if (!(i >= from_int)) {
                                                printf("..");
                                            }
                                        }

                                    }

                                }

                                if(from_int != gamma_position_int){
                                    printf(" ");
                                }
                                printf("Going up!");

                                printf(" ");
                            
                                for(int i = from_int; i <= to_int; i++) {

                                    if (i == 0){
                                        printf("B");
                                            
                                        if(!(i >= to_int)){
                                            printf("..");
                                        }
                                    }

                                    if (i == 1){
                                        printf("G");

                                        if(!(i >= to_int)){
                                            printf("..");
                                        }
                                    }    

                                    if (i == 2){
                                        printf("1");
                                            
                                        if(!(i >= to_int)){
                                            printf("..");
                                        }
                                    }

                                    if (i == 3){
                                        printf("2");
                                            
                                        if(!(i >= to_int)){
                                            printf("..");
                                        }
                                    }

                                    if(i == 4){
                                        printf("3");
                                            
                                        if(!(i >= to_int)){
                                            printf("..");
                                        }
                                    }                            
                                    
                                    if (i == 5){
                                        printf("4");
                                            
                                        if(!(i >= to_int)){
                                            printf("..");
                                        }
                                    }
                                    
                                    if (i == 6){
                                        printf("5");
                                            
                                        if(!(i >= to_int)){
                                            printf("..");
                                        }
                                    }
                                    
                                    if (i == 7){
                                        printf("A");
                                            
                                        if(!(i >= to_int - 1)){
                                            printf("..");
                                        }
                                    }

                                }

                                gamma_num_trips_up++;
                                
                                int suma = to_int - from_int;


                                if(suma > 0){
                                    suma = suma;
                                }else{
                                    suma = suma * (-1);
                                }

                                gamma_plants_travelled = gamma_plants_travelled + suma;

                            } else {

                                // BAJADA


                            for (int i = gamma_position_int; i >= from_int; i--){

                                    if(from_int != gamma_position_int){

                                        if(i == 0){
                                            printf("B");

                                            if(!(i <= from_int)){
                                                printf("..");
                                            }
                                        }

                                        if (i == 1) {
                                            printf("G");

                                            if (!(i <= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if(i == 2){
                                            printf("1");

                                            if(!(i <= from_int)){
                                                printf("..");
                                            }
                                        }

                                        if(i == 3){
                                            printf("2");

                                            if(!(i <= from_int)){
                                                printf("..");
                                            }
                                        }

                                        if (i == 4) {
                                            printf("3");

                                            if (!(i <= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if (i == 5) {
                                            printf("4");

                                            if (!(i <= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if (i == 6) {
                                            printf("5");

                                            if (!(i <= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if (i == 7) {
                                            printf("A");

                                            if (!(i <= from_int - 1)) {
                                                printf("..");
                                            }
                                        }                     
                                    
                                    }
                                    
                                }

                            
                                for(int i = gamma_position_int; i <= from_int; i++ ){

                                    if (from_int != gamma_position_int){

                                        if (i == 0) {                    
                                            printf("B");

                                            if (!(i >= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if (i == 1) {
                                            printf("G");

                                            if (!(i >= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if (i == 2) {
                                            printf("1");

                                            if (!(i >= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if (i == 3) {
                                            printf("2");

                                            if (!(i >= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if (i == 4) {
                                            printf("3");

                                            if (!(i >= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if (i == 5) {
                                            printf("4");

                                            if (!(i >= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if (i == 6) {
                                            printf("5");

                                            if (!(i >= from_int)) {
                                                printf("..");
                                            }
                                        }

                                        if (i == 7) {
                                            printf("A");

                                            if (!(i >= from_int - 1)) {
                                                printf("..");
                                            }
                                        }

                                    }

                                }

                                if(from_int != gamma_position_int){
                                    printf(" ");
                                }

                                printf("Going down!");
                                printf(" ");

                                for(int i = from_int; i >= to_int; i--) {

                                    if (i == 0){
                                        printf("B");
                                            
                                        if(!(i <= to_int)){
                                            printf("..");
                                        }
                                    }

                                    if (i == 1){
                                        printf("G");

                                        if(!(i <= to_int)){
                                            printf("..");
                                        }
                                    }    

                                    if (i == 2){
                                        printf("1");
                                            
                                        if(!(i <= to_int)){
                                            printf("..");
                                        }
                                    }

                                    if (i == 3){
                                        printf("2");
                                            
                                        if(!(i <= to_int)){
                                            printf("..");
                                        }
                                    }

                                    if(i == 4){
                                        printf("3");
                                            
                                        if(!(i <= to_int)){
                                            printf("..");
                                        }
                                    }                            
                                    
                                    if (i == 5){
                                        printf("4");
                                            
                                        if(!(i <= to_int)){
                                            printf("..");
                                        }
                                    }
                                    
                                    if (i == 6){
                                        printf("5");
                                            
                                        if(!(i <= to_int)){
                                            printf("..");
                                        }
                                    }
                                    
                                    if (i == 7){
                                        printf("A");
                                            
                                        if(!(i <= to_int - 1)){
                                            printf("..");
                                        }
                                    }
                                }


                                gamma_num_trips_down++;

                                int suma = from_int - to_int;


                                if(suma > 0){
                                    suma = suma;
                                }else{
                                    suma = suma * (-1);
                                }

                                gamma_plants_travelled = gamma_plants_travelled + suma;



                            }

                            printf("\n\n");

                            

                            gamma_floor = to;
                            

                            break;
                    }

            //  ------------------------------------------------------------------------------



        }

    }

        if(option == 'B' || option == 'b'){

            // ----------------------------------------OPTION - B----------------------------------------------

            alpha_num_trips = alpha_num_trips_up + alpha_num_trips_down;
            beta_num_trips = beta_num_trips_up + beta_num_trips_down;
            gamma_num_trips = gamma_num_trips_up + gamma_num_trips_down;

            printf("\nElevators statistics:\n\n");

            printf("ALPHA: %d rides (%d-%d) and %d floors traveled\n", alpha_num_trips, alpha_num_trips_up, alpha_num_trips_down, alpha_plants_travelled);
            printf("BETA: %d rides (%d-%d) and %d floors traveled\n", beta_num_trips, beta_num_trips_up, beta_num_trips_down, beta_plants_travelled);
            printf("GAMMA: %d rides (%d-%d) and %d floors traveled\n\n", gamma_num_trips, gamma_num_trips_up, gamma_num_trips_down, gamma_plants_travelled);


            // --------------------------------------------------------------------------------------------------

        }

        if (option == 'C' || option == 'c'){

            //----------------------------------------OPTION - C ---------------------------------------------------

            

            if(alpha_plants_travelled >= FLOORS_FOR_INSPECTION){
                
                printf("\nElevator Alpha: inspection requiered");
                alpha_price_repare += (alpha_plants_travelled / FLOORS_FOR_INSPECTION) * INSPECTION_PRICE;

            }

            if(beta_plants_travelled >= FLOORS_FOR_INSPECTION){

                printf("\nElevator Beta: inspection requiered");
                beta_price_repare += (beta_plants_travelled / FLOORS_FOR_INSPECTION) * INSPECTION_PRICE;

            }


            if(gamma_plants_travelled >= FLOORS_FOR_INSPECTION){

                printf("\nElevator Gamma: inspection requiered");
                gamma_price_repare += (gamma_plants_travelled / FLOORS_FOR_INSPECTION) * INSPECTION_PRICE;

            }

            

            
            if(alpha_plants_travelled >= FLOORS_FOR_INSPECTION || beta_plants_travelled >= FLOORS_FOR_INSPECTION || gamma_plants_travelled >= FLOORS_FOR_INSPECTION){

                do{

                    printf("\n\nPerform inspection? ");
                    scanf(" %c", &do_inspection);

                }while(do_inspection != 'Y' && do_inspection != 'y' && do_inspection != 'N' && do_inspection != 'n');
                



                if(do_inspection == 'Y' || do_inspection == 'y'){

                    if(alpha_plants_travelled >= FLOORS_FOR_INSPECTION){
                        printf("Elevator Alpha inspected! (%d euros)\n", alpha_price_repare);
                        alpha_plants_travelled = 0;
                    }

                    if(beta_plants_travelled >= FLOORS_FOR_INSPECTION){
                        printf("Elevator Beta inspected! (%d euros)\n", beta_price_repare);
                        beta_plants_travelled = 0;
                    }


                    if(gamma_plants_travelled >= FLOORS_FOR_INSPECTION){
                        printf("Elevator Gamma inspected! (%d euros)\n", gamma_price_repare);
                        gamma_plants_travelled = 0;
                    }
                    

                    printf("\nAccumulated expense: %d euros\n\n", alpha_price_repare + beta_price_repare + gamma_price_repare);
                    

                }else{
                    printf("\nAccumulated expense: %d euros\n\n", alpha_price_repare + beta_price_repare + gamma_price_repare);
                }

            }else{

                printf("No requiered inspection\n\n");
                printf("Accumulated expense: 0 euros\n\n");
            
            }






            ///------------------------------------------------------------------------------------------------------
        }
        
        if(option == 'Q' || option == 'q'){

            printf("\nSee you later!");

        }


    } while (option != 'q' && option != 'Q');

    return 0;

}