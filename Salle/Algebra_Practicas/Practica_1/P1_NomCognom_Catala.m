function [a,b,c,Determinant,Resultat,Resposta,Rang,X1,Tipus1,X2,Tipus2,X3,Base,Bc_B1,dB1,eB2,B2_B3,eB3] = P1_NomCognom_Catala()

d = [2; 1; 5];

B1 = [3, 2, 3; 1, 5, 4; 2, 1, 0];

%b) 
Bc = [1, 0, 0; 
      0, 1, 0;
      0, 0, 1];

Bc_B1 = inv(B1) * Bc;
disp(Bc_B1);

comp_Bc = Bc \ d;
disp (comp_Bc);

comp_B1 = Bc_B1 * comp_Bc;
disp(comp_B1);

%c)


% dB1= 





%Exercici 3
    %a)
% eB2 = 
    %b)
% B2_B3 = 
    %c)
% eB3 = 
end





