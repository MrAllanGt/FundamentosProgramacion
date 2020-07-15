Algoritmo GuessNumber
	// ANÁLISIS DEL PROBLEMA
	// Outputs:		rand, num, WIN o LOSE
	// Inputs:		num
	// Aux:			WIN, LOSE
	
	// DISEÑO DEL ALGORITMO
	// Vars/Cons
	Definir num, rand Como Entero;
	Definir WIN, LOSE Como Texto;
	WIN = "¡Adivinaste! :) El número es: ";
	LOSE = "¡Inténtalo de nuevo! :( El número es: ";
	
	// Inputs
	Escribir "¡Adivina el número generado al azar (1-5)!" Sin saltar;
	Leer num;
	
	// Process & Outputs
	rand = azar(5)+1;
	Si num = rand Entonces
		Escribir WIN, rand;
	SiNo
		Escribir LOSE, rand;
	FinSi
FinAlgoritmo









