Funcion PROM <- PROMEDIO(ARREGLO,CANTIDAD)
	SUMA <- 0
	PARA I<- 1 HASTA CANTIDAD Hacer
		SUMA <- SUMA+ ARREGLO[I]
	FinPara
	PROM <- SUMA/CANTIDAD
FinFuncion

Algoritmo PRINCIPAL
	Dimension DATOS[20]
	Escribir "INGRESE LA CANTIDAD DE DATOS A PROMEDIAR"
	Leer CD
	Para I<-1 Hasta CD Hacer
		Escribir "INGRESE EL DATO ",I,":"
		Leer DATOS[I]
	FinPara
	
	Escribir "EL PROMEDIO ES: ",PROMEDIO(DATOS,CD)
	
FinAlgoritmo
