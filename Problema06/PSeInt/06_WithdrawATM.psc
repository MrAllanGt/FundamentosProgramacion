Algoritmo WithdrawATM
	// ANÁLISIS DEL PROBLEMA
	// Outputs:		balance		
	// Inputs:		pinInput, amount
	// Aux:			PIN
	// DISEÑO DEL ALGORITMO
	// Vars/Cons
	Definir PIN, pinInput como Texto;
	Definir amount, balance como Real;
	PIN = "2020";
	balance = 1000;
	
	// Inputs
	Escribir "PIN " Sin Saltar;
	Leer pinInput;
	// Process & Outputs
	Si pinInput = PIN Entonces
		Limpiar Pantalla;
		Escribir "Ingrese la cantidad a retirar " Sin Saltar;
		Leer amount;
		Si amount <= balance Entonces
			balance = balance - amount;
			Escribir "Saldo: ", balance;
		SiNo
			Escribir "Saldo insuficiente.";
			Escribir "No se realizo ninguna transacciÛn.";
		FinSi
	SiNo
		Escribir "°Pin es incorrecto!";
	FinSi
FinAlgoritmo
