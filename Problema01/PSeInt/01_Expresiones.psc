Algoritmo Expresiones
	// AN�LISIS DEL PROBLEMA
	// Outputs:	result
	// Inputs:	a, b, c
	// Auxs:	none
	
	// DISE�O DEL ALGORITMO
	// Vars/Cons
	Definir a, b, c como entero;
	Definir result Como Real;
	
	// Inputs
	Escribir "Ingrese tres n�meros enteros: ";
	Leer a, b, c;
	
	// Process & Outputs
	Escribir "--- RESULTADOS ---";
	// (),^ ra�z mod, / * * /, + - - +
	
	result = (a + b) * c;
	Escribir "a + b * c = ", result;
	
	result = (b + a) mod c;
	Escribir "b + a mod c = ", result;
	
	result = b / (a mod c);
	Escribir "b / a mod c = ", result;
	
FinAlgoritmo
