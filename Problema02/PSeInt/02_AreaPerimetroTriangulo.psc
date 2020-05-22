Algoritmo AreaPerimetroTriangulo
	// AN�LISIS DEL PROBLEMA
	// Outputs:	area, perimetro
	// Inputs:	sideA, sideB, sideC
	// Aux:		semiP
	
	// DISE�O DEL ALGORITMO
	// Vars/Cons
	Definir area, perimeter, sideA, sideB, sideC, semiP como real;
	
	// Inputs
	Escribir "Ingrese primer lado: " sin saltar;
	Leer sideA;
	
	Escribir "Ingrese segundo lado: " sin saltar;
	Leer sideB;
	
	Escribir "Ingrese tercer lado: " sin saltar;
	Leer sideC;
	
	// Process
	perimeter = sideA + sideB + sideC;
	semiP = perimeter / 2.0;
	area = rc(semiP * (semiP - sideA) * (semiP - sideB) * (semiP - sideC));
	
	// Outputs
	Escribir "";
	Escribir "�rea = ", area;
	Escribir "Per�metro = ", perimeter;	
FinAlgoritmo




