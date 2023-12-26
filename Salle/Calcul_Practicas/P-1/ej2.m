
h = 0.001;

x = -2:h:2; 

y_cosh = (cosh(x)) .^ 2;
y_senh = (sinh(x)) .^ 2;
dif = y_cosh - y_senh;

figure
plot(x, y_cosh, 'b');

hold on;

plot(x, y_senh, 'r');
plot(x, dif, 'y');

legend('sen hiperbolic2(x)', 'cos hiperbolic2(x)', 'cos2(x) - sinh2(x)')

hold off;

