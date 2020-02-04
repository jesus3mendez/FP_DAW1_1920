//Calculo area triangulo
//26/09/19
SubProceso area<- CalculoArea (base,altura)
	Definir area como Real;
	area<- (base*altura) / 2;
FinSubProceso
Proceso  AreaTriangulo
	Definir base, altura,resultado como Real;
	Escribir "Introduzca la base: " Sin Saltar;
	Leer base;
	Escribir "Introduzca la altura: " Sin Saltar;
	Leer altura;
	resultado<-CalculoArea(base,altura)
	Escribir "El área del triangulo de base ",base," y con altura ",altura," es igual a ",resultado," metros cuadrados."
FinProceso

