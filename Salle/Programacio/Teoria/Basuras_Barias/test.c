#include <stdio.h>


int main(){
    
    char letter;
    
    printf("Letter? ");
    scanf("%c", &letter);
    
    while (letter != 'X'){
       
       if(letter > 'A' && letter < 'Z'){

            letter = letter + 'a' - 'A';
            printf("%c\n", letter);


        }

        if(letter > 'a' && letter < 'z'){

            printf("Please, enter an uppercase letter.\n");

        }
    
        printf("Letter? ");
        scanf(" %c", &letter);


         
        
        
    }
    
    
    return 0;
}