function [x1] = suma_raices (vector)

	%Y=input('Ingrese su vector: ') % Solicita la entrada de un polinomio de parte del usuario
	Y= vector
	a = sort(Y,'descend') % ordena el vector de mayor a menor 
	
	%result= 0 % variable que tiene el resultado de la operacion
	status = 1 % variable que marca el esta de "ejecutado correctamente" o "pendiente"
	
	% mientras status sea 1, el programa solicitara el vector en el formato solicitado
	% cuando se ingrese el formato correspondiente, retornara el valor de la raiz de los tres elementos de mayor valor
	while status == 0 
		if numel(a)>=3
			x1 = sqrt(a(1)) + sqrt(a(2)) + sqrt(a(3))
			status = 0
		else
			Y=input('Ingrese su vector con un minimo de 3 elementos [x1,x2,x3,...,xn]: ')
			a = sort(Y,'descend')
		end
	end
end
