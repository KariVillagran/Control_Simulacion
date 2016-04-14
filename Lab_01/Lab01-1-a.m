%LAB 001
%PRIMERA PARTE 

%FUNCIONES

%Originales del enunciado:

a(x) = 7log(5, 2x+3)
b(x) = sin( 13 ∗ ( log7(x + 2)))


%DEFINICION DE VARIABLES :


x = 0:0.01:4*pi % Definición del conjunto de datos para el valor x de las funciones
a = 7*(log(2*x+3)/log(5)) % ingreso de la funcion a
b=sin(13*(log(x+2)/log(7))) % ingreso de la funcion b

% Creacion de gráficos

plot(a,'b*') % generar grafico de la funcion ingresada con un formato de linea * color azul
title (' Gráfico estrella') % titulo de gráfico
ylabel ('Eje de las Y') % nombre eje y
xlabel ('Eje de las X') % nombre eje x
gtext ('Función a = 7*(log(2*x+3)/log(5))') % elemento de texto en area del gráfico

plot(z,'rx') % generar grafico de la funcion ingresada con un formato de linea x color rojo
title (' Gráfico X') % titulo de gráfico
ylabel ('Eje de las Y') % nombre eje y
xlabel ('Eje de las X') % nombre eje x
gtext ('Función b=sin(13*(log(x+2)/log(7)))') % elemento de texto en area del gráfico

% Grafico que representa ambas funciones de forma conjunta
plot(x,a,x,z) % generar grafico con dos funciones y el mismo conjunto de datos
title (' Gráfico doble') % titulo de gráfico
xlabel ('Eje de las X')  % nombre eje X
ylabel ('Eje de las Y') % nombre eje Y
gtext ('Función a = 7*(log(2*x+3)/log(5))')
gtext ('Función b=sin(13*(log(x+2)/log(7)))')