function [a,b,c,Determinant,Resultat,Resposta,Rang,X1,Tipus1,X2,Tipus2,X3,Base,Bc_B1,dB1,eB2,B2_B3,eB3] = P1_NomCognom_Catala()
%TEMA 1

%Exercici 1 

A = [5, 3, 2;
    23, 1, 6; 
    7, 13, 21;
    8, 56, 43];

a = A (3, :); 


b = A(:, 2);  


c = A(1, end-1:end);



%TEMA 3

%EX_1


v_1 = input('Introduce el primer vector: ');
v_2 = input('Introduce el segon vector: ');
v_3 = input('Introduce el tercer vector: ');

Matriz_vect = [v_1, v_2, v_3];

if rank(Matriz_vect) == 3
    
    if det(Matriz_vect) ~= 0
        Base = 1;

    else
        Base = 0;

    end

else
    Base = 0;



%EX_2

B1 = [3, 2, 3; 1, 5, 4; 2, 1, 0];

%a) 

d = [2; 1; 5];

%b)


Bc = [1, 0, 0; 
      0, 1, 0;
      0, 0, 1];

Bc_B1 = inv(B1) * Bc;


%c)

comp_Bc = Bc \ d;

dB1= Bc_B1 * comp_Bc;


end





