% Llamar a la función para obtener valores de x, y, y dy
[x, y, dy] = valores_y_der();

% Graficar la función y su derivada discreta
figure;

subplot(2, 1, 1);
plot(x, y, 'b', 'LineWidth', 2);
title('Función sin(x)');
xlabel('x');
ylabel('sin(x)');

subplot(2, 1, 2);
plot(x(1:end-1), dy, 'r', 'LineWidth', 2);
title('Derivada Discreta de sin(x)');
xlabel('x');
ylabel('dy/dx');

% Mostrar la leyenda
legend('sin(x)', 'Derivada Discreta');

% Ajustar el diseño de la figura
sgtitle('Función sin(x) y su Derivada Discreta');
