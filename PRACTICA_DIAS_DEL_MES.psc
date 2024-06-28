Algoritmo PRACTICA_DIAS_DEL_MES
	Escribir "INGRESE MES"
	Leer MES
	SI (MES>=1 Y MES<=6) Entonces
		SI ((MES%2)=0) Entonces
			Escribir "MES ",MES," TIENE 30 DIAS"
		SiNo
			Escribir "MES ",MES," TIENE 31 DIAS"
		FinSi
	SiNo
		SI(MES>=7 Y MES<=12) Entonces
			SI ((MES%2) <>0) Entonces
				Escribir "MES ",MES," TIENE 30 DIAS"
			SiNo
				Escribir "MES ",MES," TIENE 31 DIAS"
			FinSi
		FinSi
	FinSi
FinAlgoritmo
