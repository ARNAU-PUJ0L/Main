#include <stdio.h>

#define MAX 500

typedef struct{

    char name[MAX];
    char L_name[MAX];
    int age;

}person;


person read_data(){

    person p_1;

    printf("Name: ");
    scanf("%s", &p_1.name);

    printf("Last name: ");
    scanf("%s", &p_1.L_name);

    printf("Age: ");
    scanf("%d", &p_1.age);

    return p_1;

}

void print_data(){

    person p_1;

    char option;

    printf("Show name, last name or age (n, l, a): ");
    scanf(" %c", &option);

    if (option == 'n'){

        printf("Output: %s", p_1.name);
        
    }

    if (option == 'l'){

        printf("Output: %s", p_1.L_name);
    }


    if (option == 'a'){

        printf("Output: %d", p_1.age);
    }

    if(option != 'a' && option != 'n' && option != 'l'){

        printf("Invalid option");

    }


}


int main(){

    read_data();
    print_data();


}