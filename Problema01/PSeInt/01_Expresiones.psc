Algoritmo Expresiones
	// ANÁLISIS DEL PROBLEMA
	// Outputs:	result
	// Inputs:	a, b, c
	// Auxs:	none
	
	// DISEÑO DEL ALGORITMO
	// Vars/Cons
	Definir a, b, c como entero;
	Definir result Como Real;
	
	// Inputs
	Escribir "Ingrese tres números enteros: ";
	Leer a, b, c;
	
	// Process & Outputs
	Escribir "--- RESULTADOS ---";
	// (),^ raíz mod, / * * /, + - - +
	
	result = (a + b) * c;
	Escribir "a + b * c = ", result;
	
	result = (b + a) mod c;
	Escribir "b + a mod c = ", result;
	
	result = b / (a mod c);
	Escribir "b / a mod c = ", result;
	
FinAlgoritmo
