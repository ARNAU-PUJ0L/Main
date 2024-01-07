function valores_y_der = ej3(valores_y, h)
% input: valores_y and h
valores_y = sin(-pi:0.01:pi);
h = 0.01;
% output: valores_yd. It must contain two values less than the input.

N = length(valores_y);

valores_y_der = zeros(size(valores_y));

% Loop para calcular cada elemento de valores_y_der
for n = 2:(N - 1)
      
    valores_y_der(n) = (valores_y(n + 1) - valores_y(n - 1)) / (2 * h);
end

valores_y_der = valores_y_der(2:end-1);

figure
subplot(2, 1, 1)
plot(valores_y)
    
subplot(2, 1, 2)
plot(valores_y_der)
    
end