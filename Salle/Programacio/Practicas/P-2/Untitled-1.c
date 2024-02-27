        if(valid == 1 && num_cars <= MAX_VEHICLES){

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
            num_cars++;
        }

        if(num_cars > MAX_VEHICLES){
            printf("(ERROR) No more vehicles are accepted");
        }