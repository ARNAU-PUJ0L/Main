/**************************************************************************************************************************************
* @ Proposit: --------------------------------------------------------------

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

    if (str_1[0] == str_2[0] && str_1[1] == str_2[1]) {
        return 0; 
    } else {
        return 1; 
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


char* plate_1(char command[MAX_COMAND]){
    
    char* plate_1 = (char*)malloc(MAX_PLATE);
    char vehicle_1;
    int i = 0;
    int j = 0;

    while(command[i] != ' '){
        i++;
    }

    i++;
                    
    vehicle_1 = command[i];

    i = i + 2;
            
    for(j = 0; command[i] != ' '; j++, i++){
        plate_1[j] = command[i]; 
    }
    
    plate_1[j] = '\0';


    return plate_1;

}

char* plate_2(char command[MAX_COMAND]){
    
    char* plate_2 = (char*)malloc(MAX_PLATE);
    char vehicle_2;
    int i = 0;
    int j = 0;

    while(command[i] != ' '){
        i++;
    }

    i = i + 2;
                    
    vehicle_2 = command[i];

    i++;

    for(j = 0; command[i] != ' '; j++, i++){
        plate_2[j] = command[i]; 
    }
    
    plate_2[j] = '\0';

    return plate_2;

}

char* plate_3(char command[MAX_COMAND]){
    
    char* plate_3 = (char*)malloc(MAX_PLATE);
    char vehicle_3;
    int i = 0;
    int j = 0;

    while(command[i] != ' '){
        i++;
    }

    i++;
                    
    vehicle_3 = command[i];

    i = i + 2;

    for(j = 0; command[i] != ' '; j++, i++){
        plate_3[j] = command[i]; 
    }
    
    plate_3[j] = '\0';

    return plate_3;

}

char* plate_4(char command[MAX_COMAND]){
    
    char* plate_4 = (char*)malloc(MAX_PLATE);
    char vehicle_4;
    int i = 0;
    int j = 0;

    while(command[i] != ' '){
        i++;
    }

    i++;
                    
    vehicle_4 = command[i];
            
    for(j = 0; command[i] != ' '; j++, i++){
        plate_4[j] = command[i]; 
    }
    
    plate_4[j] = '\0';

    return plate_4;

}

char* plate_5(char command[MAX_COMAND]){
    
    char* plate_5 = (char*)malloc(MAX_PLATE);
    char vehicle_5;
    int i = 0;
    int j = 0;

    while(command[i] != ' '){
        i++;
    }

    i++;
                    
    vehicle_5 = command[i];
            
    for(j = 0; command[i] != ' '; j++, i++){
        plate_5[j] = command[i]; 
    }
    
    plate_5[j] = '\0';

    return plate_5;

}

char* plate_6(char command[MAX_COMAND]){
    
    char* plate_6 = (char*)malloc(MAX_PLATE);
    char vehicle_6;
    int i = 0;
    int j = 0;

    while(command[i] != ' '){
        i++;
    }

    i++;
                    
    vehicle_6 = command[i];
            
    for(j = 0; command[i] != ' '; j++, i++){
        plate_6[j] = command[i]; 
    }
    
    plate_6[j] = '\0';

    return plate_6;

}

char* plate_7(char command[MAX_COMAND]){
    
    char* plate_7 = (char*)malloc(MAX_PLATE);
    char vehicle_7;
    int i = 0;
    int j = 0;

    while(command[i] != ' '){
        i++;
    }

    i++;
                    
    vehicle_7 = command[i];
            
    for(j = 0; command[i] != ' '; j++, i++){
        plate_7[j] = command[i]; 
    }
    
    plate_7[j] = '\0';

    return plate_7;

}

char* plate_8(char command[MAX_COMAND]){
    
    char* plate_8 = (char*)malloc(MAX_PLATE);
    char vehicle_8;
    int i = 0;
    int j = 0;

    while(command[i] != ' '){
        i++;
    }

    i++;
                    
    vehicle_8 = command[i];
            
    for(j = 0; command[i] != ' '; j++, i++){
        plate_8[j] = command[i]; 
    }
    
    plate_8[j] = '\0';

    return plate_8;

}

int verificate_enter_command(char command[MAX_COMAND]){

    int len_command = 0;
    int valid = 1;
    int i = 0;
    int j = 0;


    do{
        if(valid == 0){
            printf("\n\nParking LS> ");
            fgets(command, MAX_COMAND, stdin);
            fix_str(command);   
            len_command = strlen(command);     
        }
        
        if((command[0] == 'e' && command[1] == 'n' && command[2] == 't' && command[3] == 'e' && command[4] == 'r') && (command[5] == ' ' && (command[6] == 'T' || command[6] == 'C' || command[6] == 'B') && command[7] == ' ')){

            switch (len_command){ /// mal, pq la matricula puede serr una cedena de hasta 15 caract.
                                
                case 21:

                    if(command[16] == '2'){

                        if((command[17] >= '0' && command[17] < '4') && command[18] == ':' && (command[19] >= '0' && command[19] <= '5') && (command[20] >= 0 && command[20] <= '9')){
                            valid = 1;
                        }else{
                            //printf("1");
                            printf("(ERROR) Wrong time format\n");
                            valid = 0;
                        }
                    }

                    if(command[16] == '1'){

                        if((command[17] >= '0' && command[17] <= '9') && command[18] == ':' && (command[19] >= '0' && command[19] <= '5') && (command[20] >= 0 && command[20] <= '9')){
                            valid = 1;
                        }else{
                            //printf("2");
                            printf("(ERROR) Wrong time format\n");
                            valid = 0;
                        }
                    
                    }

                    if(command[16] != '1' && command[16] != '2'){
                        //printf("3");
                        printf("(ERROR) Wrong time format\n");
                        valid = 0;
                    }

                    break;
                            
                case 20:
                    
                    if((command[16] >= '0' && command[16] <= '9') && command[17] == ':' && (command[18] >= '0' && command[18] <= '5') && (command[19] >= 0 && command[19] <= '9')){
                        valid = 1;
                    }else{
                        //printf("4");
                        printf("(ERROR) Wrong time format\n");
                        valid = 0;
                    }

                    break;

            }

        }else{
            
            printf("(ERROR) Wrong command\n");
            valid = 0;
        }


    }while(valid == 0); 

    return 1;
}


void compare_plates(char* plate_1, char* plate_2, char* plate_3, char* plate_4, char* plate_5, char* plate_6, char* plate_7, char* plate_8, int loop){
    
    int num_cars; // AQUI
    
    if(loop == 2){
    /*
        for(int i = 0; plate_1[i] != '\0'; i++){
            printf("%c\n", plate_1[i]);
        }

        for(int i = 0; plate_2[i] != '\0'; i++){
            printf("\n%c\n", plate_2[i]);
        }   
*/

        if(strcmp(plate_1, plate_2) == 0){

            printf("(ERROR) This vehicle is already in the parking!");

        }else{
            num_cars++;
        }
    }






            if(loop == 3){
                if(strcmp(plate_1, plate_3) == 0 || strcmp(plate_2, plate_3) == 0){

                    printf("(ERROR) This vehicle is already in the parking!");

                }else{
                    num_cars++;
                }             
            }

            if(loop == 4){
                if(strcmp(plate_1, plate_2) == 0 || strcmp(plate_1, plate_3) == 0 || strcmp(plate_2, plate_3) == 0 || strcmp(plate_1, plate_4) == 0 || strcmp(plate_2, plate_4) == 0
                || strcmp(plate_3, plate_4) == 0){

                    printf("(ERROR) This vehicle is already in the parking!");

                }else{
                    num_cars++;
                }
            }


            if(loop == 5){
                if(strcmp(plate_1, plate_2) == 0 || strcmp(plate_1, plate_3) == 0 || strcmp(plate_2, plate_3) == 0 || strcmp(plate_1, plate_4) == 0 || strcmp(plate_2, plate_4) == 0
                || strcmp(plate_3, plate_4) == 0 || strcmp(plate_1, plate_5) == 0 || strcmp(plate_2, plate_5) == 0 || strcmp(plate_3, plate_5) == 0 || strcmp(plate_4, plate_5) == 0){

                    printf("(ERROR) This vehicle is already in the parking!");

                }else{
                    num_cars++;
                }
            }

            if(loop == 6){
                if(strcmp(plate_1, plate_2) == 0 || strcmp(plate_1, plate_3) == 0 || strcmp(plate_2, plate_3) == 0 || strcmp(plate_1, plate_4) == 0 || strcmp(plate_2, plate_4) == 0
                || strcmp(plate_3, plate_4) == 0 || strcmp(plate_1, plate_5) == 0 || strcmp(plate_2, plate_5) == 0 || strcmp(plate_3, plate_5) == 0 || strcmp(plate_4, plate_5) == 0 
                || strcmp(plate_1, plate_6) == 0 || strcmp(plate_2, plate_6) == 0 || strcmp(plate_3, plate_6) == 0 || strcmp(plate_4, plate_6) == 0 || strcmp(plate_5, plate_6) == 0){

                    printf("(ERROR) This vehicle is already in the parking!");

                }else{
                    num_cars++;
                }
            }

            if(loop == 7){
                if(strcmp(plate_1, plate_2) == 0 || strcmp(plate_1, plate_3) == 0 || strcmp(plate_2, plate_3) == 0 || strcmp(plate_1, plate_4) == 0 || strcmp(plate_2, plate_4) == 0
                || strcmp(plate_3, plate_4) == 0 || strcmp(plate_1, plate_5) == 0 || strcmp(plate_2, plate_5) == 0 || strcmp(plate_3, plate_5) == 0 || strcmp(plate_4, plate_5) == 0 
                || strcmp(plate_1, plate_6) == 0 || strcmp(plate_2, plate_6) == 0 || strcmp(plate_3, plate_6) == 0 || strcmp(plate_4, plate_6) == 0 || strcmp(plate_5, plate_6) == 0
                || strcmp(plate_1, plate_7) == 0 || strcmp(plate_2, plate_7) == 0 || strcmp(plate_3, plate_7) == 0 || strcmp(plate_4, plate_7) == 0 || strcmp(plate_5, plate_7) == 0
                || strcmp(plate_6, plate_7) == 0){

                    printf("(ERROR) This vehicle is already in the parking!");

                }else{
                    num_cars++;
                }
            }

            if(loop == 8){
                if(strcmp(plate_1, plate_2) == 0 || strcmp(plate_1, plate_3) == 0 || strcmp(plate_2, plate_3) == 0 || strcmp(plate_1, plate_4) == 0 || strcmp(plate_2, plate_4) == 0
                || strcmp(plate_3, plate_4) == 0 || strcmp(plate_1, plate_5) == 0 || strcmp(plate_2, plate_5) == 0 || strcmp(plate_3, plate_5) == 0 || strcmp(plate_4, plate_5) == 0 
                || strcmp(plate_1, plate_6) == 0 || strcmp(plate_2, plate_6) == 0 || strcmp(plate_3, plate_6) == 0 || strcmp(plate_4, plate_6) == 0 || strcmp(plate_5, plate_6) == 0
                || strcmp(plate_1, plate_7) == 0 || strcmp(plate_2, plate_7) == 0 || strcmp(plate_3, plate_7) == 0 || strcmp(plate_4, plate_7) == 0 || strcmp(plate_5, plate_7) == 0
                || strcmp(plate_6, plate_7) == 0 || strcmp(plate_1, plate_8) == 0 || strcmp(plate_2, plate_8) == 0 || strcmp(plate_3, plate_8) == 0 || strcmp(plate_4, plate_8) == 0
                || strcmp(plate_5, plate_8) == 0 || strcmp(plate_6, plate_8) == 0 || strcmp(plate_7, plate_8) == 0){

                    printf("(ERROR) This vehicle is already in the parking!");

                }else{
                    num_cars++;
                }
            }    
}



int main(){

    // Variables
    
    char tariffs[MAX_TARIF];
    char command[MAX_COMAND];

    char* str_plate_1;
    char* str_plate_2;
    char* str_plate_3;
    char* str_plate_4;
    char* str_plate_5;
    char* str_plate_6;
    char* str_plate_7;
    char* str_plate_8;


    //menu
    int int_enter = 1;
    char str_enter[MAX_COMAND] = "enter"; 
    
    int int_exit = 1;
    char str_exit[MAX_COMAND] = "exit";
    
    int int_show = 1;
    char str_show[MAX_COMAND] = "show";

    int int_quit = 1;
    char str_quit[MAX_COMAND] = "quit";

    int r_verificate_enter_command = 0;
    int loop = 1;


    printf("Welcome to Parking LS!\n");

    printf("Enter tariffs: ");
    fgets(tariffs, MAX_TARIF, stdin);

    fix_str(tariffs);

    read_tariff(tariffs);







    do{
        printf("\nParking LS> ");
        fgets(command, MAX_COMAND, stdin);
        fix_str(command);

        int_enter = identify_comand(command, str_enter);
        r_verificate_enter_command = verificate_enter_command(command);




        if(int_enter == 0 && r_verificate_enter_command == 0){
            // error command / time format
        }




        if(int_enter == 0 && r_verificate_enter_command == 1){

            if(loop == 1){
                verificate_enter_command(command);
                    str_plate_1 = plate_1(command);

                for(int i ; str_plate_1[i] != '\0'; i++){
                    printf("\n%c\n", str_plate_1[i]);
                }
            } 

            if(loop == 2){
                verificate_enter_command(command);
                char* str_plate_2 = plate_2(command);
                //compare_plates()

            } 

            if(loop == 3){
                verificate_enter_command(command);
                str_plate_3 = plate_3(command);
            }

            if(loop == 4){
                verificate_enter_command(command);
                str_plate_4 = plate_4(command);
            }

            if(loop == 5){
                verificate_enter_command(command);
                str_plate_5 = plate_5(command);
            }

            if(loop == 6){
                verificate_enter_command(command);
                str_plate_6 = plate_6(command);
            }

            if(loop == 7){
                verificate_enter_command(command);
                str_plate_7 = plate_7(command);
            }

            if(loop == 8){
                verificate_enter_command(command);
                str_plate_8 = plate_8(command);
            } 

            compare_plates(str_plate_1, str_plate_2, str_plate_3, str_plate_4, str_plate_5, str_plate_6, str_plate_7, str_plate_8, loop);


            if(loop <= MAX_VEHICLES){
                loop++;
            }

            if(loop > MAX_VEHICLES){
                printf("(ERROR) No more vehicles are accepted\n ");
            }
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


    free(str_plate_1);
    free(str_plate_2);
    free(str_plate_3);
    free(str_plate_4);
    free(str_plate_5);
    free(str_plate_6);
    free(str_plate_7);
    free(str_plate_8);


    printf("See you later!");


    return 0;
}