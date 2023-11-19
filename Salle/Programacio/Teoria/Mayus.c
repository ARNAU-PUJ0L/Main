#include <stdio.h>


int main(){
    
    char letter;
    
    printf("Letter? ");
    scanf("%c", &letter);
    
    while (letter != 'X'){
        
        printf("Letter? ");
        scanf("%d", &letter);        
        
        if (letter != 'X'){
            
            letter = letter - 'A' + 'a';
            
        }
        
    }
    
    
    return 0;
}