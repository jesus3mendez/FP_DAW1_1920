//Fecha: 19/09/19
//Programador: Jesus cristian Mendez Vanguela
//Lista de numero entre el 1 y el 12 controlando los numeros
Proceso listaDeNumeros
	Definir num1,num2,salto,i como entero;
	Escribir  "Primer numero:" Sin Saltar;
	Leer num1;
	Escribir  "Segundo numero:" Sin Saltar;
	Leer num2;
	Escribir  "Salto:" Sin Saltar;
	Leer salto;
	Si num1>num2 y salto <0 Entonces
		Escribir "Lista descendente";
		Para i<-num1 Hasta num2 Con Paso salto Hacer
			Escribir i;
		Fin Para
	SiNo
		Si num1<num2 y salto>0 Entonces
			Escribir "Lista Ascendente";
			Para i<-num1 Hasta num2 Con Paso salto Hacer
				Escribir i;
			Fin Para
		SiNo
			Escribir "Datos Incoherentes";
		FinSi
	Fin Si
FinProceso

