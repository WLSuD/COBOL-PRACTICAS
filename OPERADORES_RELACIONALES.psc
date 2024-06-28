Algoritmo OPERADORES_RELACIONALESS
	
	Escribir 'Ingresar primer numero: '
	Leer a
	
	Escribir 'Ingresar segundo numero: '
	Leer  b
	
	Escribir 'Ingrese un tercer numero'
	Leer c
	//------------condiciones relacionales
	Escribir 'los numeros ingresados son: ',a,' y ',b
	Escribir 'presiones tecla para continuar'
	Esperar Tecla
	Limpiar Pantalla	
	si a = b Entonces
		Escribir a,' es igual a ',b
	SiNo
		si a>b Entonces
			Escribir a,' es mayor que ',b
		SiNo
			si a<b Entonces
				Escribir a,' es menor que ',b
			FinSi
		FinSi
	FinSi
	
	//------------condiciones logicos AND
	si (a=b) y (b=c) Entonces
		Escribir 'la condicion es verdadera'
	SiNo
		Escribir 'lacondicion es falsa'
	FinSi
	
	//condicion or
	si (a=b) o (b=c) Entonces
		Escribir 'una de los dos es verdadero, la condicion es verdadera'
	SiNo
		Escribir 'ninguna verdadera, la condicion es falsa'
	FinSi
	
	//condicion or not disyuncion
	si(a=b) o no(a=c) Entonces
		Escribir "cumple la afirmacion y la negacion, es verdadeo"
	FinSi
	
FinAlgoritmo
