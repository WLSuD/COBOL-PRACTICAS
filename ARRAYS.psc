Algoritmo array
	Dimension numeros[5]
	I=0
	
	numeros[1] <- 20
	numeros[2] <- 60
	numeros[3] <- 50
	numeros[4] <- 80
	numeros[5] <- 90
	
	Escribir "ingrese el indice entre el 1-5"
	Leer I
	SI I>0 Y I<6 Entonces
		Escribir numeros[I]
	SiNo
		Escribir "INDICE ERRONEO"
	FinSi
FinAlgoritmo
