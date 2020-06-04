Algoritmo PartyExpenses
	// ANÁLISIS DEL PROBLEMA
	// Outputs:	foodCost, drinksCost, decoCost, catering, total	
	// Inputs:	people
	// Aux: 	FOOD(32.50), DRINKS(10.50), DECO(5.50), FOOD_PER(15%)
	//			DRINK_PER(10%), DECO_PER(5%)
	
	// DISEÑO DEL ALGORITMO
	// Vars/Cons
	Definir people Como Entero;
	Definir foodCost, drinksCost, decoCost, catering, total Como Real;
	Definir FOOD, FOOD_PER, DRINKS, DRINKS_PER, DECO, DECO_PER Como Real;
	FOOD = 32.50;
	FOOD_PER = 0.15;
	DRINKS = 10.50;
	DRINKS_PER = 0.10;
	DECO = 5.50;
	DECO_PER = 0.05;
	
	// Inputs
	Escribir "¿Cantidad de invitados? " Sin Saltar;
	Leer people;
	
	// Process
	foodCost = people * FOOD;
	drinksCost = people * DRINKS;
	decoCost = people * DECO;
	catering = (foodCost * FOOD_PER) + (drinksCost * DRINKS_PER) + (decoCost * DECO_PER);
	total = foodCost + drinksCost + decoCost + catering;
	
	// Outputs
	Limpiar Pantalla;
	Escribir "Comida ", foodCost;
	Escribir "Bebidas ", drinksCost;
	Escribir "Decoración ", decoCost;
	Escribir "Catering ", catering;
	Escribir "";
	Escribir "Total ", total;
FinAlgoritmo


