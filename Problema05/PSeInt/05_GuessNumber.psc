Algoritmo GuessNumber
	// AN�LISIS DEL PROBLEMA
	// Outputs:		rand, num, WIN o LOSE
	// Inputs:		num
	// Aux:			WIN, LOSE
	
	// DISE�O DEL ALGORITMO
	// Vars/Cons
	Definir num, rand Como Entero;
	Definir WIN, LOSE Como Texto;
	WIN = "�Adivinaste! :) El n�mero es: ";
	LOSE = "�Int�ntalo de nuevo! :( El n�mero es: ";
	
	// Inputs
	Escribir "�Adivina el n�mero generado al azar (1-5)!" Sin saltar;
	Leer num;
	
	// Process & Outputs
	rand = azar(5)+1;
	Si num = rand Entonces
		Escribir WIN, rand;
	SiNo
		Escribir LOSE, rand;
	FinSi
FinAlgoritmo









