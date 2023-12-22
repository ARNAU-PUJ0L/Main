function [a,b,c,Determinant,Resultat,Resposta,Rang,X1,Tipus1,X2,Tipus2,X3,Base,Bc_B1,dB1,eB2,B2_B3,eB3] = P1_PujolArnau()
%% Practica 1. EXERCICIS MATLAB. ÀLGEBRA LINEAL

%% NOM I COGNOMS DELS MEMBRES DEL GRUP
%Membre 1: Arnau Pujol 
%Membre 2: Eric de Arco     
%Membre 3: Santiago Franco
%Grup: A

%Per a executar el codi, cal copiar la linia 1 d'aquest fitxer a la línia
%de comandes (sense la paraula function)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%                             TEMA 1                              %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Exercici 1 

% declaracio de la matriu A
A = [5, 3, 2; 23, 1, 6; 7, 13, 21; 8, 56, 43];

% a és la tercera fila de la matriu A
a = A(3, :);

% b és la segona columna de la matriu A
b = A(:, 2);

% c són els dos últims valors de la primera fila de la matriu A
c = A(1, end-1:end);


%Exercici 2 
%Declaracio de la matriu B
B = [-2, 1, 2; 9, 4, -1; 3, 8, 5];

% Determinant de la matriu B
Determinant = det(B);


%Exercici 3 

% Declaracio de les matrius C i D
C = [6, 4, 15, 10; 13, -4, 7, 6; 12, 5, 3, 2; 8, 9, 14, 11];
D = [7, 8, 5, 8; 4, -2, 6, 9; -5, 7, 3, -1; 10, -6, 2, 13];

% Calcula les inverses de les matrius C i D
inversa_C = inv(C);
inversa_D = inv(D);

% Multiplica les matrius C i D
Mult_1 = C * D;

% Multiplica les inverses de les matrius D i C
Mult_2 = (inversa_D) * (inversa_C);

% Multiplica els resultats anteriors
Resultat = Mult_1 * Mult_2;


Resposta = '(C * D) * ((D ^ -1 ) * (C ^ -1)) es igual a C * (D * D^-1) * C^-1, com (D * D^-1) es igual a la matriu identitat. C * I * C^-1.  Aquesta operació és equivalent a multiplicar C per la inversa de C, i el resultat hauria de ser la matriu identitat.';


%Exercici 4 

%Creacio d'una matriu 3x3 aleatoria
E = randn(3, 3);

% Rang de la matriu E
Rang = rank(E);

% Amb un condicional, segons el rang de la matriu E s'executa una part del
% codi o una altre

if Rang == 1

    % Si el rang és 1, mostra la imatge (foto1.jpg)
    imagen1 = imread('foto1.jpg');
    imshow(imagen1);

elseif Rang == 2

    % Si el rang és 2, redimensiona la imatge (foto2.jpg) i la mostra
    imagen2 = imresize(imread('foto2.jpg'), 0.5);
    imshow(imagen2);

elseif Rang == 3
    
    % Si el rang és 3, carrega una imatge (foto3.jpg), rota 90º i la mostra
    imagen3 = imread('foto3.jpg');
    imagen3_90 = rot90(imagen3);
    imshow(imagen3_90);
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%                             TEMA 2                              %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Exercici 1

A = [1/3 2 1 5; 3 3 -5 15; 7 -1 -2 2];

% redierx per files de la matriu augmentada A
X1 = rref(A);

% Verifica condicions per determinar el tipus de sistema
if rank(A(:, 1:end-1)) == rank(A)

    if rank(A(:, 1:end-1)) == size(A, 2) - 1
        % Si el rang de A treient la darrera columna és igual al rang de A,
        % i és igual al nombre de columnes menys 1, llavors és SCI
        Tipus1 = "SCI";
    
    else
        % Si el rang de A treient la darrera columna és igual al rang de A,
        % però no és igual al nombre total de columnes menys 1, llavors és SCD
        Tipus1 = "SCD";
    
    end

else
    % Si el rang de A treient la darrera columna no és igual al rang de A,
    % llavors el sistema és SI
    Tipus1 = "SI";

end

%Exercici 2

%Del sistema d'equacions donat separo els valors de les incògnites al
% matriu A2 i els valors dels termes independents a la matriu B2
A2 = [1 -1; -2 2];
B2 = [2; -3];

% Resol el sistema d'equacions amb linsolve
X2 = linsolve(A2, B2);

% Comprova el tipus de sistema
if rank(A2) == rank([A2 B2])

    if rank(A2) == size(A2, 2)
        % Si el rang de la matriu de coeficients és igual al rang de la matriu ampliada
        % i és igual al nombre de columnes de A2, llavors és un sistema compatible determinat
        Tipus2 = 'SCD'; 
    
    else
        % Si el rang de la matriu de coeficients és igual al rang de la matriu ampliada,
        % però no és igual al nombre de columnes de A2, llavors és un sistema compatible indeterminat
        Tipus2 = 'SCI'; 
    
    end

else
    % Si el rang de la matriu de coeficients no és igual al rang de la matriu ampliada,
    % llavors és un sistema incompatible
    Tipus2 = 'SI'; 

end




%Exercici 3
% Donada la matriu C
C = [1 -3 9; 2 4 8];

% Calcula la forma escalonada reduïda de C
X3 = rref(C);

% Divideix C en la part de les variables i la part de les constants
A = C(:, 1:2); % Matriu de coeficients de les variables
B = C(:, 3);   % Vector de termes constants

% Resol el sistema d'equacions amb linsolve
X4 = linsolve(A, B); 

% Crea un espai lineal de valors per x
x = linspace(-10, 20, 100);

% Calcula les equacions de les rectes en funció de x
y1 = (x - 9) / 3;
y2 = (8 - 2*x) / 4;

% Dibuixa les rectes i la solució
figure;
plot(x, y1, 'LineWidth', 2);
hold on;
plot(x, y2, 'LineWidth', 2);
plot(X4(1), X4(2), 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r'); % Marca la solució amb un cercle vermell
grid on;
xlabel('x');
ylabel('y');
legend('show');
hold off;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%                             TEMA 3                              %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Exercici 1 

% Demana a l'usuari els components dels tres vectors
v1 = input('Introdueix els components del primer vector [x, y, z]: ');
v2 = input('Introdueix els components del segon vector [x, y, z]: ');
v3 = input('Introdueix els components del tercer vector [x, y, z]: ');

% Forma la matriu amb els vectors com a columnes
A = [v1', v2', v3'];

% Verifica si els vectors formen una base
if det(A) ~= 0
    Base = 1; % Si el determinant és diferent de zero els vectors formen base
else
    Base = 0; % Si el determinant és zero els vectors no formen base
end



%Exercici 2

B1 = [3, 2, 3; 1, 5, 4; 2, 1, 0]; 

%a)  

% Es crea el vector demanat

d = [2; 1; 5];  


%b) 

% Definir la matriu Bc (base canonica de R3)
Bc = [1, 0, 0; 0, 1, 0; 0, 0, 1];

% Calcular el producte de la inversa de B1 per Bc per tal d'aconsegir la
% matriu de canvi de base
Bc_B1 = inv(B1) * Bc;

 

%c) 

%Calcular 'dB1', les components de d en base canonica
comp_Bc = Bc \ d; 


%Calcular 'dB1', les components de d en base 1
dB1= Bc_B1 * comp_Bc; 



%Exercici 3

%a

% Definir la matriu e
e = [7, 1; -2, -4];

% Inicialitzar la matriu B2 com una matriu tridimensional de zeros
B2 = zeros(2, 2, 4);

% Assignar valors a les matrius de la base B2
B2(:, :, 1) = [1, 0; 2, 0];
B2(:, :, 2) = [0, -1; 0, 0];
B2(:, :, 3) = [0, 1; -2, 0];
B2(:, :, 4) = [-1, 0; 0, 1];

% Calcular la inversa de cada pàgina de la matriu B2 (la inversa de cada matriu 2x2)
inv_B2 = pageinv(B2);

% Multiplicar cada inversa per la matriu e
eB2 = zeros(size(e));

for i = 1:4
    eB2 = eB2 + inv_B2(:, :, i) * e;
end



%b)


% Inicialitzar la matriu B3 com una matriu tridimensional de zeros
B3 = zeros(2, 2, 4);

% Assignar valors a les matrius de la base B3
B3(:, :, 1) = [0, 1; -1, 0];
B3(:, :, 2) = [2, 1; 0, -2];
B3(:, :, 3) = [-2, 0; 0, 0];
B3(:, :, 4) = [-2, 0; 2, 0];

% Calcular la descomposició SVD de B2 i multiplicar les pàgines corresponents de B3
B2_B3 = B3 .* pagesvd(B2);



%c)
% Multiplicar element per element les matrius B2_B3 i eB2

eB3 = B2_B3 .* eB2; 

end





