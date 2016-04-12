LAB 001
PRIMERA PARTE 

FUNCIONES

Originales del enunciado:

a(x) = 7log(5, 2x+3)
b(x) = sin( 13 ∗ ( log7(x + 2)))





DEFINICION DE VARIABLES :


x = 0:0.01:4*pi % Definición del conjunto de datos para el valor x de las funciones

a = 7*(log(2*x+3)/log(5)) % ingreso de la funcion a

plot(a,'b*') % generar grafico de la funcion ingresada con un formato de linea * color azul
title (' Gráfico estrella') % titulo de gráfico
ylabel ('Eje de las Y') % nombre eje y
xlabel ('Eje de las X') % nombre eje x
gtext ('Función a = 7*(log(2*x+3)/log(5))') % elemento de texto en area del gráfico



b=sin(13*(log(x+2)/log(7))) % ingreso de la funcion b

plot(z,'rx') % generar grafico de la funcion ingresada con un formato de linea x color rojo
title (' Gráfico X') % titulo de gráfico
ylabel ('Eje de las Y') % nombre eje y
xlabel ('Eje de las X') % nombre eje x
gtext ('Función b=sin(13*(log(x+2)/log(7)))') % elemento de texto en area del gráfico



plot(x,a,x,z) % generar grafico con dos funciones y el mismo conjunto de datos
title (' Gráfico doble') % titulo de gráfico
xlabel ('Eje de las X')  % nombre eje X
ylabel ('Eje de las Y') % nombre eje Y
gtext ('Función a = 7*(log(2*x+3)/log(5))')
gtext ('Función b=sin(13*(log(x+2)/log(7)))')



x = -30:0.05:30
c = (2*x) .* (exp(5*x-7))
title (' Gráfico escala normal')
xlabel ('Eje de las X')
ylabel ('Eje de las Y')
gtext ('Función c = (2*x) .* (exp(5*x-7))')

semilogy (c, 'r*');
title (' Gráfico escala logaritmica')
xlabel ('Eje de las X')
ylabel ('Eje de las Y')
gtext ('Función c = (2*x) .* (exp(5*x-7))')



SEGUNDA PARTE

%               M�todo de Newton-Raphson
%               Autor: Julio Echeverri
%               30/12/2013
function [X1] = Newton_Raphson()

syms x    %declaramos a X una variable simb�lica
Y=input('Ingrese la funci�n: ');  %se solicita la entrada de la funci�n



%graficamos la funci�n en un intervalo para poder tomar una buena
%estimaci�n de la ra�z
sup = input('Ingrese el limite superior para graficar: ');
in = input('Ingrese el limite inferior para la visualizaci�n: ');
t = linspace(in,sup,500);    %generamos un vector con los valores
plot(t,subs(Y,t))               %generamos la gr�fica
grid on


Xn=input('Ingrese el valor apr�ximado de la ra�z: ');    %se solicita la estimaci�n inicial
Ydx = diff(Y,x);   %derivamos la funcion Y con respecto a X y lo asignamos a la variable Ydx

%inicializar varibles
error = 1;
tolerancia = 0.000001;

    while error>=tolerancia    %condici�n de terminaci�n cuando el error sea menor a la tolerancia 
         
         X1 = Xn - (subs(Y,Xn)/subs(Ydx,Xn));  %formula de Newton-Raphson
         error = abs((X1-Xn)/X1);              %calculo del error
         Xn=X1;  %asignaci�n del nuevo valor de Xn para la siguiente iteraci�n
    
    end
end



% NETWON RHAPSON RECURSIVO CTM

function [xn1] = Newton_Raphon (polinomio_input, iteraciones_input, e_input,xn)
syms x;
xn1 = xn - (subs(polinomio_input,xn)/subs(diff(polinomio_input,x),xn));
if abs((xn1-xn)/xn1) >= e_input && iteraciones_input > 0
	xn1 = Newton_Raphon(polinomio_input,iteraciones_input-1,e_input,xn);
else 
    xn1 = xn - (subs(polinomio_input,xn)/subs(diff(polinomio_input,x),xn));
end 

end 


PARTE B

Y=input('Ingrese su vector: ') # solicita vector de entrada

a = sort(Y,'descend') # ordena el vector de mayor a menor

result= 0
status = 1

# mientras status sea 1, el programa solicitara el vector en el formato solicitado
# cuando se ingrese el formato correspondiente, retornara el valor de la raiz de los tres elementos de mayor valor
while status == 0 
	if numel(a)>=3
		result = sqrt(a(1)) + sqrt(a(2)) + sqrt(a(3))
		status = 0
	else
		Y=input('Ingrese su vector con un minimo de 3 elementos [x1,x2,x3,...,xn]: ')
		a = sort(Y,'descend')
	end
end





















