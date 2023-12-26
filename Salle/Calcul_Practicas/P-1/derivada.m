function [x, y, dy] = valores_y_der()
    % Definir el rango de valores para x
    x = -pi:0.01:pi;

    % Calcular la función sin(x)
    y = sin(x);

    % Calcular la derivada discreta
    dy = diff(y) / 0.01;
end
