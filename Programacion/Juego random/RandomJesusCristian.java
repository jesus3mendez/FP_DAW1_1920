import java.io.IOException;
import java.util.Scanner;


public class RandomJesusCristian 
{



	public static Scanner opcion= new Scanner(System.in);

	static boolean NOacertado=false;
	static int intento=1;
	static int num = 0 ;


	public static void main(String[] args) throws IOException 
	{
		int opcion=0;
		int numRandom= (int)(Math.random()*100+50);
	
		System.out.println("Bienvenido a RANDOM!");
		System.out.println("");
		System.out.println("--------------------");
		System.out.println("");
		System.out.println("Explicación del juego: ");
		System.out.println("Para ganar en este juego lo único que debe hacer es acertar un número aleatorio entre 50 y 150.");
		System.out.println("Tendra 10 intentos,ni uno más ni uno menos, si en tus primeros tres intentos acierta te llevaras la medalla de oro.");
		System.out.println("Si es entre el cuarto intento y el sexto ,ganara la medalla de plata, en cambio si es entre el intento 7 y el 9, ganara la medalla de bronce.");
		System.out.println("¿Que pasa con el decimo intento?, bien, le daremos una medalla pero de consolación.");
		System.out.println("Si desea finalizar el juego aprieta 0.");
		System.out.println("¿Parece facil no?. Bueno veamos si es cierto. Suerte!");
		System.out.println("Pulse ENTER para iniciar el juego");
		System.in.read();
	
		do {
	
			opcion=print(); 
			if (opcion==0) 
			{
	
				System.out.println("---GAME OVER---");
				System.out.println("Gracias por jugar a Random, espero que le haya gustado.");
	
				break;
	
			}
			
			if( opcion>numRandom && intento <=10 && opcion>=50 && opcion<=150 ) 
			{
				System.out.println("El numero que buscas es menor");
				System.out.println("");
	
			}
			
			else if (opcion<numRandom && intento <=10 && opcion>=50 && opcion<=150)
			{
				System.out.println("El numero que buscas es mayor");
				System.out.println("");
	
			}
			
			else if (opcion==numRandom && intento <=10) 
			{
	
				switch(intento) 
				{
					case 1: case 2: case 3: System.out.println("Enhorabuena, ha ganado la medalla de oro!! :o"); break;
					case 4: case 5: case 6: System.out.println("Enhorabuena, ha ganado la medalla de plata! :)"); break;
					case 7: case 8: case 9: System.out.println("Buen trabajo, ha ganado la medalla de bronce, aunque los dos sabemos que lo puedes hacer mejor  ;)"); break;
					case 10: System.out.println("Has tenido suerte, y por ello te mereces la medalla de consolación. º_º"); break;
					default: System.out.println("");
	
				}
						System.out.println("Ha utilizado "+intento+" intentos, gracias por jugar!");
						break;
			}
	
			else if (opcion!=numRandom && intento>=10) 
			{
				System.out.println("Más suerte la próxima vez, piensa bien en tu número!");
				break;
	
			}
	intento++;
			}

	while(opcion!=numRandom || intento>10 || opcion!=0);
		NOacertado=false;
} 

	public static int print() 
{

	int num = 0 ;

	while(NOacertado=true) 
	{

		System.out.println("Introduce un número (Entre 50-150)");
		System.out.println("");
		num=opcion.nextInt();
		
		if(num>=1 && num<=49)
		{
			System.out.println("El numero introducido no se encuentra en el rango permitido (Entre 50-150)");
		}


		if (num<0|| num >150 )
		{
			System.out.println("El numero introducido no se encuentra en el rango permitido (Entre 50-150)");
		}
		else 
		{
			break;
		}

	}

return num;
}
}

