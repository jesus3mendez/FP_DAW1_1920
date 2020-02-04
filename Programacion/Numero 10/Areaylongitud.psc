SubProceso longitudC <- CalculoLoongitud (radio Por Referencia)
	Definir longitudC como Real;
	Escribir" Introduzca el radio de la circunferencia: " Sin Saltar;
	Leer radio;
	longitudC<- (2*PI*radio);
FinSubProceso

SubProceso AreaCirculo <- CalculoAreaCir (radio Por Referencia)
	Definir AreaCirculo como Real;
	Escribir " Introduzca el radio del circulo: " sin saltar;
	Leer radio;
	AreaCirculo <- (PI*(radio)^2);
FinSubProceso

SubProceso AreaCuadrado<- CalculoAreaCua (lado Por Referencia)
	Definir AreaCuadrado como Real;
	Escribir " Introduzca el lado del cuadrado: "sin saltar;
	Leer lado;
	AreaCuadrado <- lado^2;
FinSubProceso

SubProceso AreaTrapecio<- CalculoTrapecio (Basemayor,Basemenor, altura Por Referencia)
	Definir AreaTrapecio como Real;
	Escribir "Introduzca la altura: " Sin Saltar;
	Leer altura
	Escribir " Ahora introduzca la base menor: " sin saltar;
	Leer Basemenor;
	Escribir" Finalmente, introduzca la base mayor: " sin saltar;
	
	AreaTrapecio <- altura*(Basemenor+Basemayor)/2;
FinSubProceso

Proceso  Areasylongitud
	Definir  radio,lado,altura,Basemayor,Basemenor, resultado, opción,sw como entero;
	Definir operacion como cadena;
	sw <- 0
	Repetir 
		si opción  !=9 Entonces
			
				Escribir " Lista de operaciones:";
				Escribir" ---------------------";
				Escribir"";
				Escribir "1) Longitud de una circunferencia.";
				Escribir "2) Area Circulo.";
				Escribir "3) Area Cuadrado."
				Escribir "4) Area Trapecio.";
				Escribir "9) Finalizar Programa.";
				Escribir "";
				Escribir "Seleccione una operacion: " sin saltar;
				Leer opción;
				redon(resultado*100)/100
	Hasta Que 
FinProceso

