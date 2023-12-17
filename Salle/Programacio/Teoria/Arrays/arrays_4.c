#include <stdio.h>



int main(){

    int num_ej;

    printf("How many exercises? ");
    scanf("%d", &num_ej);

    float array[num_ej];
    

    if (num_ej < 3){

        printf("Not enough exercises!");
        return 0;

    }else if (num_ej >= 20){

        printf("Too much exercises!");
        return 0;

    }else{

        float sumatorio = 0;
        float nota_final;

        for (int i = 1; i <= num_ej; i++){

            printf("Grade %d? ", i);
            scanf("%f", &array[i]);

        }

        for (int i = 1; i <= num_ej; i++){

            sumatorio += array[i];

        }

        nota_final = sumatorio / num_ej;

        printf("Sumatorio: %.2f\n", sumatorio);

        printf("Num ej: %d\n", num_ej);

        printf("Your final grade is %.2f", nota_final);

    }
    


    return 0;
}