/* Este codigo ha sido generado por el modulo psexport 20180802-w32 de PSeInt.
Es posible que el codigo generado no sea completamente correcto. Si encuentra
errores por favor reportelos en el foro (http://pseint.sourceforge.net). */

// En java, el nombre de un archivo fuente debe coincidir con el nombre de la clase que contiene,
// por lo que este archivo deber�a llamarse "ADIVINANUMALEA.java."

import java.io.*;
import java.math.*;

public class adivinanumalea {

	// JUEGO DE NUMERO ALEATORIO
	// FECHA:18/10/19
	// PROGRAMADOR: JES�S CRISTIAN MENDEZ VANGUELA
	public static void main(String args[]) throws IOException {
		BufferedReader bufEntrada = new BufferedReader(new InputStreamReader(System.in));
		int numramdom;
		int opcion;
		int try;
		try = 1;
		numramdom = Math.floor(Math.random()*100)+50;
		System.out.println("Bienvenido a RANDOM!");
		System.out.println("");
		System.out.println("--------------------");
		System.out.println("");
		System.out.println("Explicaci�n del juego: ");
		System.out.println("Para ganar en este juego lo �nico que debe hacer es acertar un n�mero aleatorio entre 50 y 150.");
		System.out.println("Tendra 10 intentos,ni uno m�s ni uno menos, si en tus primeros tres intentos acierta te llevaras la medalla de oro.");
		System.out.println("Si es entre el cuarto intento y el sexto ,ganara la medalla de plata, en cambio si es entre el intento 7 y el 9, ganara la medalla de bronce.");
		System.out.println("�Que pasa con el decimo intento?, bien, le daremos una medalla pero de consolaci�n.");
		System.out.println("Si desea finalizar el juego aprieta 0.");
		System.out.println("�Parece facil no?. Bueno veamos si es cierto. Suerte!");
		System.out.println("Pulse ENTER para iniciar el juego");
		System.in.read(); // a diferencia del pseudoc�digo, espera un Enter, no cualquier tecla
		do {
			System.out.println("Escriba un n�mero");
			opcion = Integer.parseInt(bufEntrada.readLine());
			if (opcion==0) {
				System.out.println("Gracias por jugar a Random, espero que le haya gustado.");
			} else {
				if (opcion>=1 && opcion<=49 || opcion<0 || opcion>150) {
					System.out.println("Lo siento, pero el numero que ha elegido no se encuentra dentro de los parametros.");
					System.out.println("Pruebe con un n�mero entre 50 y 150");
				} else {
					if (opcion!=numramdom) {
						if (opcion<numramdom && try<=10) {
							System.out.println("El n�mero que buscas es mayor.");
						} else {
							System.out.println("El n�mero que buscas es menor");
						}
						try = try+1;
					}
					if (opcion==numramdom) {
						switch (try) {
						case 1: case 2: case 3:
							System.out.println("Enhorabuena, ha ganado la medalla de oro!! :o");
							break;
						case 4: case 5: case 6:
							System.out.println("Enhorabuena, ha ganado la medalla de plata! :)");
							break;
						case 7: case 8: case 9:
							System.out.println("Buen trabajo, ha ganado la medalla de bronce, aunque los dos sabemos que lo puedes hacer mejor  ;)");
							break;
						case 10:
							System.out.println("Has tenido suerte, y por ello te mereces la medalla de consolaci�n. �_�");
							break;
						}
					}
				}
			}
		} while (!(try==11 || opcion==0 || numramdom==opcion));
		System.out.println("---GAME OVER---");
	}


}

