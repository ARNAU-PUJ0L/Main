#include <stdio.h>

int main() {
    char lletra;

    printf("Introdueix un caracter: ");
    scanf(" %c", &lletra);  

    if ((lletra >= 'A' && lletra <= 'Z') || (lletra >= 'a' && lletra <= 'z')) {
        
        if (lletra >= 'a' && lletra <= 'z') {  
            lletra = lletra - 'a' + 'A';       
        }
        
        printf("La lletra es %c\n", lletra);  
    
    } else {
        printf("No es un caracter\n");        
    }

    return 0;
}
