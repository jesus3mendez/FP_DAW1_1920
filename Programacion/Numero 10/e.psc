Proceso paroimpar
	Definir resto,num Como Entero;
	Escribir "Escriba un numero para empezar:" Sin Saltar;
	Leer num;
	Si (num mod 2 = 0) Entonces
		Escribir "Numero ",num," es par";
	SiNo
		Escribir "Numero ",num," es impar";
	Fin Si
	resto<-num mod 2;
	
FinProceso

