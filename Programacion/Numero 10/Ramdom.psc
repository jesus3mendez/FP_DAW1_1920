//JUEGO DE NUMERO ALEATORIO
//FECHA:18/10/19
//PROGRAMADOR: JESÚS CRISTIAN MENDEZ VANGUELA
Proceso  AdivinaNumAlea
	Definir try,numRamdom,resultado,opción como Entero;
	try<-0;
	numRamdom<-azar(100)+1;
	Escribir "Bienvenido a RAMDOM!";
	Escribir"";
	Escribir "--------------------";
	Escribir"";
	Escribir "Explicación del juego: ";
	Escribir"Para ganar en este juego lo único que debe hacer es acertar un número aleatorio entre 50 y 150.";
	Escribir"Tendra 10 intentos,ni uno más ni uno menos, si en tus primeros tres intentos acierta te llevaras la medalla de oro."
	Escribir"Si es entre el cuarto intento y el sexto ,ganara la medalla de plata, en cambio si es entre el intento 7 y el 9, ganara la medalla de bronce."
	Escribir "¿Que pasa con el decimo intento?, bien, le daremos una medalla pero de consolación.";
	Escribir"Si desea finalizar el juego aprieta 0.";
	Escribir"¿Parece facil no?. Bueno veamos si es cierto. Suerte!";
	Escribir"Pulse ENTER para iniciar el juego";
	Esperar Tecla;
	Repetir
		Leer opción;
		try<-try+1;
		Si opción==0 Entonces
			Escribir"Gracias por jugar a Ramdom, espero que le haya gustado.";
		SiNo
			Si opción>=1 y opción<=49 o opción<0 y opción>150 Entonces
				Escribir"Lo siento, pero el numero que ha elegido no se encuentra dentro de los parametros.";
				Escribir"Pruebe con un número entre 50 y 150";
				Si no 
					Si opción>=50 y opción<=150 Entonces
						Segun try Hacer
							1,2,3:
								Escribir "Enhorabuena, ha ganado la medalla de oro!!." ;
							4,5,6:
								Escribir "Enhorabuena, ha gando la medalla de plata!.";
							7,8,9:
								Escribir "Buen trabajo, ha ganado la medalla de bronce, aunque los dos sabemos que lo puedes hacer mejor."
							10:	
							De Otro Modo:
								Escribir"Has tenido suerte, y por ello te mereces la medalla de consolación."
						Fin Segun
						
					FinSi
				FinSi
			FinSi
		Fin Si
		
	Hasta Que  try=11
	Escribir "Elija un número"Sin saltar;
	Leer opción;
	
	
	
FinProceso

