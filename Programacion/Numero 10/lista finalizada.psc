	//Programador: Jesus Cristian
	//Fecha: 24/09/2019
	//Tabla de Operaciones con posibilidad de  finalizaci�n de Programa
	
	Proceso  TablaDeOperaciones
		Definir opci�n,num1,num2,resultado,sw como Entero;
		Definir  operacion como cadena;
		sw <- 0
		Repetir
		Escribir "Menu de Operaciones Aritmeticas";
		Escribir "1.- Sumar";
		Escribir "2.- Restar";
		Escribir "3.- Multiplicar";
		Escribir "4.- Dividir";
		Escribir "9.- Finalizar";
		Escribir "";
		
		Escribir " Introduce una operacion" Sin Saltar;
		Leer opci�n;
		Si opci�n<=4 y opci�n>=1 Entonces
			Escribir " Introduzca dos numeros enteros" Sin Saltar; 
			Leer num1, num2;
			Segun opci�n Hacer
				1:
					resultado <- num1 + num2;
					operacion <- "Suma";
				2:
					resultado <- num1 - num2;
					operacion <- "Resta";
				3:
					resultado <- num1* num2;
					operacion <- "Multiplicacion";
				4:
					resultado <-trunc( num1 / num2);
					operacion <- "Division";
				De Otro Modo:
					Escribir " Opci�n no v�lida"
					sw <- 1;
			Fin Segun
			Si sw==0 Entonces
				Escribir "El resultado de la ",operacion," es igual a ",resultado;
			Fin Si
		SiNo
			Si opci�n>=5 o opci�n<=8 o opci�n>=10 Entonces
				Escribir "Error en la selecci�n de operaci�n.";
				Escribir "";
			SiNo
				Escribir "Salida de Programa";
			FinSi
		Fin Si
		
	Hasta Que opci�n=9;
FinProceso

