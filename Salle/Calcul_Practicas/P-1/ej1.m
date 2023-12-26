
resol = 0.001;

x = -2:resol:2; 

y_div = (x .^ 2) ./ (1 + x .^ 4);
y_exp = 2.^(x+1);
y_cos = 3 .* cos(2.*x);

figure

subplot(3, 1, 1);
plot(x, y_div, 'r')
title('Funció racional')


subplot(3, 1, 2);
plot(x, y_exp, 'b');
title('Exponencial')

subplot(3, 1, 3);
plot(x, y_cos, 'g');
title('Cosinus')
