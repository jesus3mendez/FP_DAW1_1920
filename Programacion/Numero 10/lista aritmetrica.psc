//Programador: Jesus Cristian
//Fecha: 24/09/2019
//Menu de operaciones aritmeticas

Proceso  TablaDeOperaciones
	Definir opción,num1,num2,resultado,sw como Entero;
	Definir  operacion como cadena;
	sw <- 0
	Escribir "Menu de Operaciones Aritmeticas";
	Escribir "1.- Sumar";
	Escribir "2.- Restar";
	Escribir "3.- Multiplicar";
	Escribir "4.- Dividir";
	Escribir "9.- Finalizar";
	Escribir "";
	Escribir " Introduce una operacion" Sin Saltar;
	Leer opción;
	Escribir " Introduzca dos numeros enteros" Sin Saltar; 
	Leer num1, num2;
	Segun opción Hacer
		1:
			resultado <- num1 + num2;
			operacion <- "Suma";
		2:
			resultado <- mum1 - num2;
			operacion <- "Resta";
		3:
			resultado <- num1* num2;
			operacion <- "Multiplicacion";
		4:
			resultado <-trunc( num1 / num2);
			operacion <- "Division";
		De Otro Modo:
			Escribir " Opción no válida"
			sw <- 1;
	Fin Segun
	Si sw==0 Entonces
		Escribir "El resultado de la ",operacion," es igual a ",resultado;
	Fin Si
FinAlgoritmo
