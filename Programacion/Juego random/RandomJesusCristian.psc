//JUEGO DE NUMERO ALEATORIO
//FECHA:18/10/19
//PROGRAMADOR: JESÚS CRISTIAN MENDEZ VANGUELA
Proceso  AdivinaNumAlea
	Definir try,numRamdom,opcion como Entero;
	try<-1;
	numRamdom<-azar(100)+50;
	Escribir "Bienvenido a RANDOM!";
	Escribir"";
	Escribir "--------------------";
	Escribir"";
	Escribir "Explicación del juego: ";
	Escribir"Para ganar en este juego lo único que debe hacer es acertar un número aleatorio entre 50 y 150.";
	Escribir"Tendra 10 intentos,ni uno más ni uno menos, si en tus primeros tres intentos acierta te llevaras la medalla de oro.";
	Escribir"Si es entre el cuarto intento y el sexto ,ganara la medalla de plata, en cambio si es entre el intento 7 y el 9, ganara la medalla de bronce.";
	Escribir "¿Que pasa con el decimo intento?, bien, le daremos una medalla pero de consolación.";
	Escribir"Si desea finalizar el juego aprieta 0.";
	Escribir"¿Parece facil no?. Bueno veamos si es cierto. Suerte!";
	Escribir"Pulse ENTER para iniciar el juego";
	Esperar Tecla;
	Repetir
		Escribir "Escriba un número";
		Leer opcion;
		Si opcion=0 Entonces
			Escribir"Gracias por jugar a Random, espero que le haya gustado.";
		SiNo
			Si opcion>=1 y opcion<=49 o opcion<0 o opcion>150 Entonces
				Escribir"Lo siento, pero el numero que ha elegido no se encuentra dentro de los parametros.";
				Escribir"Pruebe con un número entre 50 y 150";
			SiNo
				Si opcion<>numRamdom Entonces
					Si opcion<numRamdom y try<=10 Entonces
						Escribir"El número que buscas es mayor.";
					SiNo 
						Escribir"El número que buscas es menor";
					FinSi
					try<-try+1;
				FinSi
				Si opcion=numRamdom Entonces
					Segun try Hacer
						1,2,3:
							Escribir "Enhorabuena, ha ganado la medalla de oro!! :o" ;
						4,5,6:
							Escribir "Enhorabuena, ha ganado la medalla de plata! :)";
						7,8,9:
							Escribir "Buen trabajo, ha ganado la medalla de bronce, aunque los dos sabemos que lo puedes hacer mejor  ;)";
						10:	
							Escribir"Has tenido suerte, y por ello te mereces la medalla de consolación. º_º";
					FinSegun
				FinSi	
			FinSi
		FinSi
Hasta Que  try=11 o opcion=0 o numRamdom=opcion
Escribir "---GAME OVER---";
FinProceso

