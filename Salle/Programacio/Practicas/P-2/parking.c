/**************************************************************************************************************************************
* @ Proposit: ----------------------------------------------------

*
* @ Autor: Arnau Pujol Chaparro
* @ Data de Creació: 28/1/23
* @ Data de ultima modificació: --------------------------------------------
**************************************************************************************************************************************/


#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#define MAX_TARIF 100
#define MAX_COMAND 50
#define MAX_PRICE 15

#define MAX 10
#define MAX_PLATE 15
#define MAX_TIME 4

#define MAX_VEHICLES 8
#define MAX_OPERATIONS 10


// ERROR: EN EL CASO Q SE INTRODUZCA UN COMANDO INEXISTENTE EN EL PRIMER PROMPT NO SALTA ERROR


void fix_str(char string[MAX_TARIF]){
    for(int i = 0; i < MAX_TARIF; i++){
        if (string[i] == '\n'){
            string[i] = '\0';
        }
    }
}


int identify_comand(char str_1[MAX_COMAND], char str_2[MAX_COMAND]){

    // Comparar las dos primeras letras
    if (str_1[0] == str_2[0] && str_1[1] == str_2[1]) {
        return 0; // Las dos primeras letras son iguales
    } else {
        return 1; // Las dos primeras letras son diferentes
    }  
}


int read_trucks(char tariffs[MAX_TARIF], int i){
    
    int z = 0;
    int j = 0;
    int k = 0;


    int truck_price_reduced = 0;
    int truck_price_peak = 0;
    int truck_price_normal = 0;


    char str_price_reduced[MAX_PRICE];
    char str_price_peak[MAX_PRICE];
    char str_price_normal[MAX_PRICE];

    while(tariffs[i] != ':'){
        i++;
    }

    i++;

    for(j = 0; j < MAX_PRICE && tariffs[i] != '/'; j++, i++){
        str_price_reduced[j] = tariffs[i];
    }
        
    str_price_reduced[j] = '\0';
    truck_price_reduced = atoi(str_price_reduced);


    i++;

    for(j = 0; j < MAX_PRICE && tariffs[i] != '/'; j++, i++){
        str_price_normal[j] = tariffs[i];
    }

    str_price_normal[j] = '\0';
    truck_price_normal = atoi(str_price_normal);

    i++;

    for(j = 0; j < MAX_PRICE && (tariffs[i] != '#' && tariffs[i] != '\0'); j++, i++){
        str_price_peak[j] = tariffs[i];
    }

    str_price_peak[j] = '\0';
    truck_price_peak = atoi(str_price_peak);


    while(tariffs[i] != 'C' && tariffs[i] != 'B' && tariffs[i] != '\0'){
        i++;
    }

    return i;

}

int read_cars(char tariffs[MAX_TARIF], int i){
    
    int z = 0;
    int j = 0;
    int k = 0;

    int car_price_reduced = 0;
    int car_price_peak = 0;
    int car_price_normal = 0;

    char str_price_reduced[MAX_PRICE];
    char str_price_peak[MAX_PRICE];
    char str_price_normal[MAX_PRICE];

    while(tariffs[i] != ':'){
        i++;
    }

    i++;

    for(j = 0; j < MAX_PRICE && tariffs[i] != '/'; j++, i++){
        str_price_reduced[j] = tariffs[i];
    }
        
    str_price_reduced[j] = '\0';
    car_price_reduced = atoi(str_price_reduced);

    i++;

    for(j = 0; j < MAX_PRICE && tariffs[i] != '/'; j++, i++){
        str_price_normal[j] = tariffs[i];
    }

    str_price_normal[j] = '\0';
    car_price_normal = atoi(str_price_normal);

    i++;

    z = i;

    for(j = 0; j < MAX_PRICE && (tariffs[z] != '#' || tariffs[z] != '\0'); j++, z++){
        str_price_peak[j] = tariffs[z];
    }

    str_price_peak[j] = '\0';
    car_price_peak = atoi(str_price_peak);


    while(tariffs[i] != 'B' && tariffs[i] != 'T' && tariffs[i] != '\0'){
        i++;
    }


    return i;

}

int read_bikes(char tariffs[MAX_TARIF], int i){
    
    int j = 0;
    int k = 0;

    int z = 0;


    int bike_price_reduced = 0;
    int bike_price_peak = 0;
    int bike_price_normal = 0;

    char str_price_reduced[MAX_PRICE];
    char str_price_peak[MAX_PRICE];
    char str_price_normal[MAX_PRICE];

    while(tariffs[i] != ':'){
        i++;
    }

    i++;

    for(j = 0; j < MAX_PRICE && tariffs[i] != '/'; j++, i++){
        str_price_reduced[j] = tariffs[i];
    }
        
    str_price_reduced[j] = '\0';
    bike_price_reduced = atoi(str_price_reduced);

    i++;

    for(j = 0; j < MAX_PRICE && tariffs[i] != '/'; j++, i++){
        str_price_normal[j] = tariffs[i];
    }

    str_price_normal[j] = '\0';
    bike_price_normal = atoi(str_price_normal);

    i++;

    z = i;

    for(j = 0; j < MAX_PRICE && (tariffs[z] != '#' || tariffs[z] != '\0'); j++, z++){
        str_price_peak[j] = tariffs[z];
    }

    str_price_peak[j] = '\0';
    bike_price_peak = atoi(str_price_peak);

    while(tariffs[i] != 'T' && tariffs[i] != 'C' && tariffs[i] != '\0'){
        i++;
    }
    return i;
}




void read_tariff(char tariffs[MAX_TARIF]){
    
    char truck[MAX] = "TRUCKS";
    char car[MAX] = "CARS";
    char bikes[MAX] = "BIKES";

    int b = 0;
    int b2 = 0;

    int c = 0;
    int c2 = 0;

    int t = 0;
    int t2 = 0;


    if(identify_comand(truck, tariffs) == 0){

        t = read_trucks(tariffs, 0);

        if(tariffs[t] == 'C'){
            t2 = read_cars(tariffs, t);
        }

        if(tariffs[t] == 'B'){
            t2 = read_bikes(tariffs, t);
        }

        if(tariffs[t2] == 'C'){
            read_cars(tariffs, t2);
        }else{
            read_bikes(tariffs, t2);
        }
    }


    if(identify_comand(bikes, tariffs) == 0){

        b = read_bikes(tariffs, 0);


        if(tariffs[b] == 'C'){
            b2 = read_cars(tariffs, b);
        }

        if(tariffs[b] == 'T'){
            b2 = read_trucks(tariffs, b);
        }

        if(tariffs[b2] == 'C'){
            read_cars(tariffs, b2);
        }else{
            read_trucks(tariffs, b2);
        }
    }

    if(identify_comand(car, tariffs) == 0){

        c = read_cars(tariffs, 0);

        if(tariffs[c] == 'T'){
            c2 = read_trucks(tariffs, c);
        }

        if(tariffs[c] == 'B'){
            c2 = read_bikes(tariffs, c);
        }

        if(tariffs[c2] == 'T'){
            read_trucks(tariffs, c2);
        }else{
            read_bikes(tariffs, c2);
        }
    }

}






void enter(char command[MAX_COMAND]){

    char time[MAX_TIME];
    char vehicle;
    char plate[MAX_PLATE];
    int i = 0;
    int j = 0;

    while(command[i] != ' '){
        i++;
    }

    i++;

    switch (command[i]){
        case 'C':
            vehicle = 'C';
            break;
        
        case 'T':
            vehicle = 'T';
            break;

        case 'B':
            vehicle = 'B';
            break;

        default:
            printf("(ERROR) Wrong command");
            break;
    }

    i + 2;

    for(j = 0; j < MAX_COMAND && command[i] != ' '; j++, i++){
        plate[j] = command[i];
    }

    plate[j] = '\0';

    i++;

    for(j = 0; j < MAX_TIME && command[i] != '\0'; j++, i++){
        time[j] = command[i];
    }

    time[j] = '\0';
    






}








int main(){

    // Variables
    
    char tariffs[MAX_TARIF];
    char command[MAX_COMAND];

    //menu
    int int_enter = 1;
    char str_enter[MAX_COMAND] = "enter"; 
    
    int int_exit = 1;
    char str_exit[MAX_COMAND] = "exit";
    
    int int_show = 1;
    char str_show[MAX_COMAND] = "show";

    int int_quit = 1;
    char str_quit[MAX_COMAND] = "quit";




    printf("Welcome to Parking LS!\n");

    printf("Enter tariffs: ");
    fgets(tariffs, MAX_TARIF, stdin);

    fix_str(tariffs);

    read_tariff(tariffs);


// ERROR'S time and command
    do{
        printf("\nParking LS> ");
        fgets(command, MAX_COMAND, stdin);
        fix_str(command);

        int_enter = identify_comand(command, str_enter);
        
        if(int_enter == 0){
            enter(command);
        }
        
        int_exit = identify_comand(command, str_exit);

        if(int_exit == 0){
            //
        }

        int_show = identify_comand(command, str_show);
        if(int_show == 0){
            //
        }

        int_quit = identify_comand(command, str_quit);
        if(int_quit == 0){
            //
        }

    }while(int_quit != 0);

    printf("See you later!");


    return 0;
}