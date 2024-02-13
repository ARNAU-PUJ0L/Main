#include <stdio.h>
#include <string.h>

#define MAX_TARIF 100
#define MAX_COMAND 50

#define MAX_VEHICLES 8
#define MAX_OPERATIONS 10

/* ERROR







*/


void read_tariff(char tariffs[MAX_TARIF]){

    if(tariffs[0] == 'T'){
        for(int i = 7; i < MAX_TARIF; i++){
            if(tariffs[i] == '/'){
                
            }
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



void enter(char comand[MAX_COMAND]){


    int valid = 1;
    int len_comand = strlen(comand);
    int num_vehicles = 0;

    do{

        if(valid == 0){
            printf("\n\nParking LS> ");
            fgets(comand, MAX_COMAND, stdin);
            fix_str(comand);   
            len_comand = strlen(comand);     
        }
        
        if((comand[0] == 'e' && comand[1] == 'n' && comand[2] == 't' && comand[3] == 'e' && comand[4] == 'r') && (comand[5] == ' ' && (comand[6] == 'T' || comand[6] == 'C' || comand[6] == 'B') && comand[7] == ' ') 
        && (comand[8] >= '0' && comand[8] <= '9') && (comand[9] >= '0' && comand[9] <= '9') && (comand[10] >= '0' && comand[10] <= '9') && (comand[11] >= '0'  && comand[11] <= '9') 
        && (comand[12] >= 'A' && comand[12] <= 'Z')  && (comand[13] >= 'A' && comand[13] <= 'Z')  && (comand[14] >= 'A' && comand[14] <= 'Z') ){

            // MAtricula == commad[8] - commmand[14]
            // PISTA -> el maximo de coches q pueden entrar es 8




            // Hora
            switch (len_comand){
                                
                case 21:

                    if(comand[16] == '2'){

                        if((comand[17] >= '0' && comand[17] <= '4') && comand[18] == ':' && (comand[19] >= '0' && comand[19] <= '5') && (comand[20] >= 0 && comand[20] <= '9')){
                            valid = 1;
                        }else{
                            printf("(ERROR) Wrong time format\n");
                            valid = 0;
                        }
                    }

                    if(comand[16] == '1'){

                        if((comand[17] >= '0' && comand[17] <= '9') && comand[18] == ':' && (comand[19] >= '0' && comand[19] <= '5') && (comand[20] >= 0 && comand[20] <= '9')){
                            valid = 1;
                        }else{
                            printf("(ERROR) Wrong time format\n");
                            valid = 0;
                        }
                    
                    }

                    if(comand[16] != '1' && comand[16] != '2'){
                        printf("(ERROR) Wrong time format\n");
                        valid = 0;
                    }

                    break;
                            
                case 20:
                    
                    if((comand[16] >= '0' && comand[16] <= '9') && comand[17] == ':' && (comand[18] >= '0' && comand[18] <= '5') && (comand[19] >= 0 && comand[19] <= '9')){
                        valid = 1;
                    }else{
                        printf("(ERROR) Wrong time format\n");
                        valid = 0;
                    }

                    break;

                default:
                    printf("(ERROR) Wrong command\n");
                    valid = 0;
                    
                    break;
            }

        }else{
            printf("(ERROR) Wrong command\n");
            valid = 0;
        }


    }while(valid == 0);

    num_vehicles++;

    if (num_vehicles > MAX_VEHICLES){
        printf("(ERROR) No more vehicles are accepted");
        num_vehicles = MAX_VEHICLES;  // NS PQ
    }

}








int main(){

    // Variables
    
    char tariffs[MAX_TARIF];
    char comand[MAX_COMAND];

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

    // CLASIFICAR COMANDOS

// ERROR'S time and command
    do{
        printf("\nParking LS> ");
        fgets(comand, MAX_COMAND, stdin);
        fix_str(comand);

        int_enter = identify_comand(comand, str_enter);
        
        if(int_enter == 0){
            enter(comand);
        }
        
        int_exit = identify_comand(comand, str_exit);

        if(int_exit == 0){
            //
        }

        int_show = identify_comand(comand, str_show);
        if(int_show == 0){
            //
        }

        int_quit = identify_comand(comand, str_quit);
        if(int_quit == 0){
            //
        }

    }while(int_quit != 0);

    printf("See you later!");



/*
    // Distrivucion de funciones

    if(int_enter == 0){
        enter(comand);
    }

    if(int_exit == 0){
        //salir();
    }

    if(int_show == 0){
        //show();
    }

    if(int_quit == 0){
        printf("See you later");
        return 0;
    }

*/
    return 0;
}