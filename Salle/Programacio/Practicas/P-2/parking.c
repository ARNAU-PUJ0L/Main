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

//*****************************************************************************
/*                                  ERRORES

**en el caso que el comando este mal, el cotxe aun asi es guardado. -- OKEY

** No hace falta tener 8 funciones para las plates // se puede hacer como he exttraido lla hora


** la matricula puede ser de 15 cart max

** max operaciones es 10 (Creo q se supone que no hay que hacer nada)

** error: Si fallas mas de 8 veces no sale el mensaje de error


*/
//*****************************************************************************

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

char* extract_hour(char command[MAX_COMAND]){

    char* hour = (char*)malloc(MAX_PLATE);

    int i = 0;
    int j = 0;

    while(command[i] != ' '){
        i++;
    }

    i++;

    i = i + 2;

    while(command[i] != ' '){
        i++;
    }

    i++;

    for(j = 0; command[i] != ':'; j++, i++){
        hour[j] = command[i];
    }

    hour[j] = '\0';

    return hour;

}

char* extract_min(char command[MAX_COMAND]){

    char* min = (char*)malloc(MAX_PLATE);

    int i = 0;
    int j = 0;

    while(command[i] != ' '){
        i++;
    }

    i++;

    i = i + 2;

    while(command[i] != ' '){
        i++;
    }

    i++;

    while(command[i] != ':'){
        i++;
    }

    i++;

    for(j = 0; command[i] != '\0'; j++, i++){
        min[j] = command[i];
    }

    min[j] = '\0';

    return min;

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

    i = i + 2;
            
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

            len_command = strlen(command);

            switch (len_command){ 
                                
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

    return valid;
}


int compare_plates(char* plate_1, char* plate_2, char* plate_3,char* plate_4, char* plate_5, char* plate_6, char* plate_7, char* plate_8, int loop, int num_cars){
    
    int equal = 0;

    if(loop == 2){


        if(strcmp(plate_1, plate_2) == 0){

            printf("(ERROR) This vehicle is already in the parking!");

        }else{
            equal = 1;
        }
    }


    if(loop == 3){

        if(strcmp(plate_1, plate_3) == 0 || strcmp(plate_2, plate_3) == 0){

            printf("(ERROR) This vehicle is already in the parking!");

        }else{
            equal = 1;
        }             
    }


    if(loop == 4){ // error plate_2 && plate_4

        if(strcmp(plate_1, plate_4) == 0 || strcmp(plate_2, plate_4) == 0 || strcmp(plate_3, plate_4) == 0){
            printf("(ERROR) This vehicle is already in the parking!");

        }else{
            equal = 1;
        }
    }


    if(loop == 5){
        if(strcmp(plate_1, plate_5) == 0 || strcmp(plate_2, plate_5) == 0 || strcmp(plate_3, plate_5) == 0 || strcmp(plate_4, plate_5) == 0){
            printf("(ERROR) This vehicle is already in the parking!");

        }else{
            equal = 1;
        }
    }

    if(loop == 6){
        if(strcmp(plate_1, plate_6) == 0 || strcmp(plate_2, plate_6) == 0 || strcmp(plate_3, plate_6) == 0 || strcmp(plate_4, plate_6) == 0 || strcmp(plate_5, plate_6) == 0){
            printf("(ERROR) This vehicle is already in the parking!");

        }else{
            equal = 1;
        }
    }

    if(loop == 7){
        if(strcmp(plate_1, plate_7) == 0 || strcmp(plate_2, plate_7) == 0 || strcmp(plate_3, plate_7) == 0 || strcmp(plate_4, plate_7) == 0 || strcmp(plate_5, plate_7) == 0
        || strcmp(plate_6, plate_7) == 0){
                    
            printf("(ERROR) This vehicle is already in the parking!");

        }else{
            equal = 1;
        }
    }

    if(loop == 8){
        if(strcmp(plate_1, plate_8) == 0 || strcmp(plate_2, plate_8) == 0 || strcmp(plate_3, plate_8) == 0 || strcmp(plate_4, plate_8) == 0
        || strcmp(plate_5, plate_8) == 0 || strcmp(plate_6, plate_8) == 0 || strcmp(plate_7, plate_8) == 0){

            printf("(ERROR) This vehicle is already in the parking!");

        }else{
            equal = 1;
        }
    }

    return equal;
               
}



int main(){

    // Variables
    
    int min_1;
    int hour_1;

    int min_2;
    int hour_2;

    int min_3;
    int hour_3;

    int min_4;
    int hour_4;


    int min_5;
    int hour_5;

    int min_6;
    int hour_6;

    int min_7;
    int hour_7;

    int min_8;
    int hour_8;



    int num_cars = 0;
    char* srt;

    char* str_2;
    
    char* str_3;
    
    char* str_4;
    
    char* str_5;
    
    char* str_6;
    
    char* str_7;
    
    char* str_8;


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

    int loop = 1;

    int equal = 0; // 0 -> no validp

    int valid = 0;

    int test = 0;

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
        verificate_enter_command(command);



        if(int_enter == 0 && num_cars < MAX_VEHICLES){

            test = verificate_enter_command(command);



            if(loop == 1){
                valid = verificate_enter_command(command);
                srt =  plate_1(command);
                hour_1 = atoi(extract_hour(command));
                min_1 = atoi(extract_min(command));

                if(valid == 1){
                    num_cars++;
                }
            

            } 

            if(loop == 2){
                verificate_enter_command(command);
                str_2 = plate_2(command);
                hour_2 = atoi(extract_hour(command));
                min_2 = atoi(extract_min(command));



            } 

            if(loop == 3){
                verificate_enter_command(command);
                str_3 = plate_3(command);
                hour_3 = atoi(extract_hour(command));
                min_3 = atoi(extract_min(command));


}

            if(loop == 4){
                verificate_enter_command(command);
                str_4 = plate_4(command);
                hour_4 = atoi(extract_hour(command));
                min_4 = atoi(extract_min(command));
            }

            if(loop == 5){
                verificate_enter_command(command);
                str_5 = plate_5(command);
                hour_5 = atoi(extract_hour(command));
                min_5 = atoi(extract_min(command));
            }

            if(loop == 6){
                verificate_enter_command(command);
                str_6 = plate_6 ( command);
                hour_6 = atoi(extract_hour(command));
                min_6 = atoi(extract_min(command));
            }

            if(loop == 7){
                verificate_enter_command(command);
                str_7 = plate_7(command);
                hour_7 = atoi(extract_hour(command));
                min_7 = atoi(extract_min(command));
            }

            if(loop == 8){
                verificate_enter_command(command);
                str_8 = plate_8(command);
                hour_8 = atoi(extract_hour(command));
                min_8 = atoi(extract_min(command));
            } 


            if(loop > 8){
                verificate_enter_command(command);
            }


            if(valid == 1){
                equal = compare_plates(srt, str_2, str_3, str_4, str_5, str_6, str_7, str_8, loop, num_cars);

                if(1 == equal){
                    num_cars++;
                }

            }

            printf("valid: %d, num: %d", valid, num_cars);


            if(loop <= MAX_VEHICLES){
                loop++;
            }

            if(num_cars > MAX_VEHICLES){
                verificate_enter_command(command);
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



    printf("See you later!");


    return 0;
}