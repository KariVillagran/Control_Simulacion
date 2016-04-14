x = -30:0.05:30 % Definición del conjunto de datos para el valor x de las funciones
c = (2*x) .* (exp(5*x-7)) % ingreso de la funcion c

% Creacion de grafico en escala normal y logaritmica
title (' Gráfico escala normal')
xlabel ('Eje de las X')
ylabel ('Eje de las Y')
gtext ('Función c = (2*x) .* (exp(5*x-7))')

semilogy (c, 'r*');
title (' Gráfico escala logaritmica')
xlabel ('Eje de las X')
ylabel ('Eje de las Y')
gtext ('Función c = (2*x) .* (exp(5*x-7))')