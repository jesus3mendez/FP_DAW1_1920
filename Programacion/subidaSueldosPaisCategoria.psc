//Fecha: 20/09/2019
//Programador: Alonso
//Input Pa�s (Espa�a, Ruman�a, Siria, Boliv�a, Brasil)
//Input Categor�a (Jefe, Administrativo, Pe�n)
//Input Sueldo = x
//Si pa�s Espa�a o Siria y categor�a Jefe o administrativo sueldo nuevo x+5%. Si la categor�a es Pe�n x+15%
//Si pa�s Bolivia y categor�a Jefe o administrativo sueldo nuevo x+7%. Si la categor�a es Pe�n x+17%
//Si pa�s es otro y categor�a Jefe o administrativo sueldo nuevo x -no hay cambio-. Si la categor�a es Pe�n x+20%
//Resultado: El <categor�a> del pa�s <pais> ten�a un sueldo de <x> moneda nacional y ahora tiene un sueldo de <x+%> moneda nacional.


Proceso subidaSueldosPaisCategoria
	Definir pais,categoria como Cadena;
	Definir sueldo,nuevoSueldo,sw como Entero;
	
	sw<-0;
	
	Escribir "Introduzca un pa�s entre los siguientes: (Espa�a, Ruman�a, Siria, Boliv�a, Brasil)" Sin Saltar;
	Leer pais;
	
	Si pais<>"Espa�a" Y pais<>"Rumania" Y pais<>"Siria" Y pais<>"Bolivia" Y pais<>"Brasil" Entonces
		Escribir "Pa�s err�neo.";
		sw<-1;
	SiNo
		Escribir "Introduzca una categor�a entre las siguientes: (Jefe, Administrativo, Pe�n)" Sin Saltar;
		Leer categoria;
		Si categoria<>"Jefe" Y categoria<>"Administrativo" Y categoria<>"Pe�n" Entonces
			Escribir "Categor�a err�nea.";
			sw<-1;
		SiNo
			Escribir "Introduzca un sueldo" Sin Saltar;
			Leer sueldo;
			
			Si pais="Espa�a" O pais="Siria" Entonces
				Si categoria="Jefe" O categoria="Administrativo" Entonces
					nuevoSueldo<-sueldo*1.05;
				SiNo
					nuevoSueldo<-sueldo*1.15;
				FinSi
			SiNo
				Si pais="Bolivia" Entonces
					Si categoria="Jefe" O categoria="Administrativo" Entonces
						nuevoSueldo<-sueldo*1.07;
					SiNo
						nuevoSueldo<-sueldo*1.17;
					FinSi
				SiNo
					Si categoria="Jefe" O categoria="Administrativo" Entonces
						nuevoSueldo<-sueldo;
					SiNo
						nuevoSueldo<-sueldo*1.20;
					FinSi
				FinSi
			FinSi
			
		FinSi
		
	FinSi
	
	Si sw=1 Entonces
		Escribir " Vuelva a ejecutar el programa";
	SiNo
		Escribir "El ",categoria," del pais ",pais," ten�a un sueldo de ",sueldo," y ahora tiene un sueldo de ",nuevoSueldo," en moneda nacional";
	FinSi
	
FinProceso
