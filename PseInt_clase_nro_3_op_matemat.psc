Algoritmo PseInt_clase_nro_3
	Definir var1, var2 Como Entero
	Escribir 'ingrese variable 1'
	Leer var1
	Escribir 'la variable ingresada es: ', var1
	Escribir 'ingrese la variable 2'
	Leer var2
	Escribir 'la variable 2 ingresada es: ', var2
	sum <- var1+var2
	Escribir 'La suma de las variables es: ', sum
	mul <- var1*var2
	Escribir 'La multiplicacion de las variables es: ', mul
	div <- var1/var2
	Escribir 'La div de las variables es: ', div
	res <- var1-var2
	Escribir 'la resta de las variables es: ', res
	Si res>9 Entonces
		Escribir 'el resultado de la resta es mayor que 9'
	SiNo
		Escribir 'el resultado es menor que 9'
	FinSi
FinAlgoritmo
