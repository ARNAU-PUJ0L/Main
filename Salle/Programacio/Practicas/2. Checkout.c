#include <stdio.h>



int main() {

    int products;
    char checkout;
    char payment;
    float price;
    float cash_paid;
    float diference;
    int visa_num;
    int cvv;


    printf("Products in the cart: ");
    scanf("%d", &products);

    printf("Do you want to checkout (Y/N)? ");
    scanf(" %c", &checkout);


    if(checkout == 'Y') {

        printf("Enter the total price: ");
        scanf("%f", &price);

        printf("Do you want to pay cash (C) or Visa (V)? ");
        scanf(" %c", &payment);

        if(payment == 'C'){

            printf("Enter the cash paid: ");
            scanf("%f", &cash_paid);

            diference = cash_paid - price;

            if(diference < 0){

                printf("Cash insufficient\n");
                printf("Have a great day!");
            
            }else{

                printf("Change returned is €%.2f\n", diference);
                printf("Have a great day!");

            }
        } 

        if(payment == 'V'){

            printf("Enter the Visa number: ");
            scanf("%d", &visa_num);

            printf("Enter the CVV code: ");
            scanf("%d", &cvv);

            printf("Charged €%.2f to Visa %d\n", price, visa_num);
            printf("Have a great day!");

          }

        if(payment != 'C' && payment != 'V'){

            printf("Payment method not recognized\n");
            printf("Have a great day!");

        }




    }else{

        printf("Have a great day!");
    }


    return 0;

}

