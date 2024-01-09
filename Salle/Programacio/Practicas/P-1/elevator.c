/**************************************************************************************************************************************
* @ Proposit: Practica-1: la reforma. S'ha de realitzar un programa que executi un servei d'ascensors, alpha, beta i gamma.
Els cuals pots desplaçar, veure les estadistiques i realitzar inspeccions. 
*
* @ Autor: Arnau Pujol Chaparro
* @ Data de Creació: 10/11/23
* @ Data de ultima modificació: 09/1/24
**************************************************************************************************************************************/

#include <stdio.h>

#define FLOORS_FOR_INSPECTION 12 
#define INSPECTION_PRICE 150

// Converteix el pis a una variable int
int floor_to_int(char floor) {
    switch (floor) {
        case 'B': return 0;
        case 'G': return 1;
        case 'A': return 7;
        default: return floor - '0' + 1;
    }
}


int main(){

    // variables menu
    char option;
    char from, to;

    // Variables option A
    int from_int = 0;
    int to_int = 0;

    int user_floor = 0;
    int alpha_diff = 0;
    int beta_diff = 0;
    int gamma_diff = 0;

    int diference_alpha = 0;
    int diference_beta = 0;
    int diference_gamma = 0;

    int alpha_position_int = 0;
    int beta_position_int = 0;
    int gamma_position_int = 0;
    
    char alpha_floor = 'G';
    char beta_floor = 'G';
    char gamma_floor = 'G';

    char selected_elevator;

    int min_distance = 0;
    int min_diff = 0;

    int alpha_distance = 0;
    int beta_distance = 0;
    int gamma_distance = 0;

    int diff_distance_alpha = 0;
    int diff_distance_beta = 0;
    int diff_distance_gamma = 0;

    // Variables option B - C

    int suma_alpha_up = 0;
    int suma_alpha_down = 0;

    int suma_beta_up = 0;
    int suma_beta_down = 0;
    
    int suma_gamma_up = 0;
    int suma_gamma_down = 0;


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

    // variables option C

    char do_inspection;

    int alpha_price_repare = 0;
    int beta_price_repare = 0;
    int gamma_price_repare = 0;

    int alpha_total_price = 0;
    int beta_total_price = 0;
    int gamma_total_price = 0;


    printf("Welcome to our building!\n\n");



    do {
        printf("A. Use Elevator | B. Statistics | C. Elevators inspection | Q. Quit\n");
        printf("Enter option: ");
        scanf(" %c", &option);

        while (option != 'A' && option != 'a' && option != 'B' && option != 'b' && option != 'C' && option != 'c' && option != 'Q' && option != 'q' ){

            printf("(ERROR) Invalid option\n\n");
            printf("A. Use Elevator | B. Statistics | C. Elevators inspection | Q. Quit\n");
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

              
                // Si Pis origen = Pis destí -> Are you joking? i tornar a preguntar

                while((from == to) && (option == 'a' || option == 'A')){

                    printf("(ERROR) Are you joking?\n\n");

                    printf("A. Use Elevator | B. Statistics | C. Elevators inspection | Q. Quit\n");
                    printf("Enter option: ");
                    scanf(" %c", &option);

                    while (option != 'A' && option != 'a' && option != 'B' && option != 'b' && option != 'C' && option != 'c' && option != 'Q' && option != 'q' ){

                        printf("(ERROR) Invalid option\n\n");
                        printf("A. Use Elevator | B. Statistics | C. Elevators inspection | Q. Quit\n");
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

                // En cas que tots el valors siguin valids
                if(from != to){

                    // Es pasen les variables a int's
                    user_floor = floor_to_int(from);

                    // variables temporals per calcular el valor absolut 
                    diference_alpha = user_floor - floor_to_int(alpha_floor);
                    diference_beta = user_floor - floor_to_int(beta_floor);
                    diference_gamma = user_floor - floor_to_int(gamma_floor);

                    // Calcula el valor absolut
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

                    // De forma predeterminada es selecciona el ascensor A
                    selected_elevator = 'A';
                    min_diff = alpha_diff;
                    min_distance = alpha_distance;


                    // En el cas de cumplir els requisitis es selecciona beta
                    if (beta_diff < min_diff || (beta_diff == min_diff && beta_distance < min_distance)) {
                        selected_elevator = 'B';
                        min_diff = beta_diff;
                        min_distance = beta_distance;
                    }

                    // En el cas de cumplir els requisitis es selecciona gamma                
                    if ((gamma_diff < alpha_diff && gamma_diff < beta_diff) || ((gamma_diff == alpha_diff && gamma_distance < alpha_distance) && gamma_diff < beta_diff) || ((gamma_diff == beta_diff && gamma_distance < beta_distance) && gamma_diff < alpha_diff)) {
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
                    from_int = floor_to_int(from);
                    to_int = floor_to_int(to);
                    
                    alpha_position_int = floor_to_int(alpha_floor);
                    beta_position_int = floor_to_int(beta_floor);
                    gamma_position_int = floor_to_int(gamma_floor);

                    switch (selected_elevator) {
                        
                        case 'A':
                            
                            // variable per calcular el abs
                            diff_distance_alpha = to_int - from_int;


                            // Calcul de abs de les plates recorregudes pel ascensor amb carrega
                            if(diff_distance_alpha > 0){
                                alpha_distance += diff_distance_alpha;
                            }else{
                                alpha_distance += diff_distance_alpha * (-1);
                            }

                        
                        // IMPRIMIR RECORRIDO ALPHA
                            if(from_int < to_int) {

                                // alpha_position - from (baixada)
                                
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

                                // alpha_position - from (pujada)
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


                                // En cas de que es desplaçi de alpha position a from... 
                                if(from_int != alpha_position_int){
                                    printf(" ");
                                }

                                printf("Going up!");
                                printf(" ");

                                // Impresio de From a to
                            
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

                                // Suma d'un nou viatge
                                alpha_num_trips_up++;

                                // variable del calcul de abs
                                suma_alpha_up = to_int - from_int;

                                // calcul abs
                                if(suma_alpha_up > 0){
                                    suma_alpha_up = suma_alpha_up;
                                }else{
                                    suma_alpha_up = suma_alpha_up * (-1);
                                }

                                // Calcul de les plantes totals
                                alpha_plants_travelled = alpha_plants_travelled + suma_alpha_up;


                            } else {

                            // Going Down

                                //Alpha_position - from (baixada)
                                
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

                                // Alpha position -  from (pujada)
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

                                // suma nou viatge(baixada)
                                alpha_num_trips_down++;

                                // variable abs
                                suma_alpha_down = from_int - to_int;

                                //calcul abs
                                if(suma_alpha_down > 0){
                                    suma_alpha_down = suma_alpha_down;
                                }else{
                                    suma_alpha_down = suma_alpha_down * (-1);
                                }

                                // Calcul plantes recorregudes
                                alpha_plants_travelled = alpha_plants_travelled + suma_alpha_down;

                            }

                            printf("\n\n");
                            alpha_floor = to;
                            
                            break;

                            // Documentacio alpha = beta = gamma, es el mateix codi canviant variables

                        case 'B':

                            diff_distance_beta = to_int - from_int;

                            if(diff_distance_beta > 0){
                                beta_distance += diff_distance_beta;
                            }else{
                                beta_distance += (diff_distance_beta * (-1));
                            }


                            if(from_int < to_int) {

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
                                
                                suma_beta_up = to_int - from_int;

                                if(suma_beta_up > 0){
                                    suma_beta_up = suma_beta_up;
                                }else{
                                    suma_beta_up = suma_beta_up * (-1);
                                }

                                beta_plants_travelled = beta_plants_travelled + suma_beta_up;

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

                                suma_beta_down = from_int - to_int;

                                if(suma_beta_down > 0){
                                    suma_beta_down = suma_beta_down;
                                }else{
                                    suma_beta_down = suma_beta_down * (-1);
                                }

                                beta_plants_travelled = beta_plants_travelled + suma_beta_down;

                            }
                            printf("\n\n");

                            beta_floor = to;
                            
                            break;

                        case 'G':
                    
                            diff_distance_gamma = to_int - from_int;
        
                            if(diff_distance_gamma > 0){
                                gamma_distance += diff_distance_gamma;
                            }else{
                                gamma_distance += diff_distance_gamma * (-1);
                            }


                            if(from_int < to_int) {

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
                                
                                suma_gamma_up = to_int - from_int;

                                if(suma_gamma_up > 0){
                                    suma_gamma_up = suma_gamma_up;
                                }else{
                                    suma_gamma_up = suma_gamma_up * (-1);
                                }

                                gamma_plants_travelled = gamma_plants_travelled + suma_gamma_up;

                            } else {


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

                                suma_gamma_down = from_int - to_int;

                                if(suma_gamma_down > 0){
                                    suma_gamma_down = suma_gamma_down;
                                }else{
                                    suma_gamma_down = suma_gamma_down * (-1);
                                }

                                gamma_plants_travelled = gamma_plants_travelled + suma_gamma_down;

                            }

                            printf("\n\n");

                            gamma_floor = to;
                            
                            break;
                    }
        }

    }

        if(option == 'B' || option == 'b'){

            //Calcula el nº total de viatges de cada ascensor

            alpha_num_trips = alpha_num_trips_up + alpha_num_trips_down;
            beta_num_trips = beta_num_trips_up + beta_num_trips_down;
            gamma_num_trips = gamma_num_trips_up + gamma_num_trips_down;

            printf("\nElevators statistics:\n\n");

            printf("ALPHA: %d rides (%d-%d) and %d floors traveled\n", alpha_num_trips, alpha_num_trips_up, alpha_num_trips_down, alpha_plants_travelled);
            printf("BETA: %d rides (%d-%d) and %d floors traveled\n", beta_num_trips, beta_num_trips_up, beta_num_trips_down, beta_plants_travelled);
            printf("GAMMA: %d rides (%d-%d) and %d floors traveled\n\n", gamma_num_trips, gamma_num_trips_up, gamma_num_trips_down, gamma_plants_travelled);

        }

        if (option == 'C' || option == 'c'){

            //Imprimeix un mensatge d'avis en el cas que un ascensor necesiti una inspeccio

            if(alpha_plants_travelled >= FLOORS_FOR_INSPECTION){
                printf("\nElevator Alpha: inspection required");
            }

            if(beta_plants_travelled >= FLOORS_FOR_INSPECTION){
                printf("\nElevator Beta: inspection required");
            }


            if(gamma_plants_travelled >= FLOORS_FOR_INSPECTION){
                printf("\nElevator Gamma: inspection required");
            }


            // En el cas que es necesiti una inspeccio

            if(alpha_plants_travelled >= FLOORS_FOR_INSPECTION || beta_plants_travelled >= FLOORS_FOR_INSPECTION || gamma_plants_travelled >= FLOORS_FOR_INSPECTION){

                printf("\n\n");

                do{

                    printf("Perform inspection? ");
                    scanf(" %c", &do_inspection);

                }while(do_inspection != 'Y' && do_inspection != 'y' && do_inspection != 'N' && do_inspection != 'n');
                



                if(do_inspection == 'Y' || do_inspection == 'y'){

                    //Selecciona l'ascensor que necesita una inspecció i calcula el seu preu de reparacio i el suma al preu historic
                    // i iguala a 0 les plantes recorregudes  i les plantas recorregudes amb carrega

                    if(alpha_plants_travelled >= FLOORS_FOR_INSPECTION){
                        
                        alpha_price_repare = (alpha_plants_travelled / FLOORS_FOR_INSPECTION) * INSPECTION_PRICE;
                        alpha_total_price += alpha_price_repare;

                        printf("Elevator Alpha inspected! (%d euros)\n", alpha_price_repare);


                        alpha_plants_travelled = 0;
                        alpha_distance = 0;
                    }

                    if(beta_plants_travelled >= FLOORS_FOR_INSPECTION){
                
                        beta_price_repare = (beta_plants_travelled / FLOORS_FOR_INSPECTION) * INSPECTION_PRICE;
                        beta_total_price += beta_price_repare;
                        
                        printf("Elevator Beta inspected! (%d euros)\n", beta_price_repare);

                        
                        beta_plants_travelled = 0;
                        beta_distance = 0;
                    }


                    if(gamma_plants_travelled >= FLOORS_FOR_INSPECTION){

                        gamma_price_repare = (gamma_plants_travelled / FLOORS_FOR_INSPECTION) * INSPECTION_PRICE;
                        gamma_total_price += gamma_price_repare;
                        
                        printf("Elevator Gamma inspected! (%d euros)\n", gamma_price_repare);

                        gamma_plants_travelled = 0;
                        gamma_distance = 0;
                    }
                    

                    printf("\nAccumulated expense: %d euros\n\n", alpha_total_price + beta_total_price + gamma_total_price);
                    

                }else{ // PRICE REPARE
                    printf("\nAccumulated expense: %d euros\n\n", alpha_price_repare + beta_price_repare + gamma_price_repare);
                }

            // No es requereix inspeccio.

            }else{
                printf("\nNo required inspection\n\n");
                printf("Accumulated expense: 0 euros\n\n");  
            }
        }
        
        if(option == 'Q' || option == 'q'){

            printf("\nSee you later!");

        }


    } while (option != 'q' && option != 'Q');

    return 0;

}