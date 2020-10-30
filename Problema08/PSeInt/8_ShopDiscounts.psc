Algoritmo ShopDiscounts
	// ANÁLISIS DEL PROBLEMA
	// Outputs:	discRate, discount, total
	// Inputs:	brand, card, total
	// Aux:			BRAND_TARGET, CARD_TARGET, TOTAL_TARGET
	
	// DISEÑO DEL ALGORITMO
	// Vars/Cons

	Definir total, discount, TOTAL_TARGET Como Real;

	Definir discRate Como Entero;

	Definir brand, card, BRAND_TARGET, CARD_TARGET como Texto;

	discRate = 0;

	discount = 0.00;

	TOTAL_TARGET = 200.00;

	BRAND_TARGET = "nike";

	CARD_TARGET = "visa";

	
	// Inputs
	Escribir "Marca " Sin Saltar;

	Leer brand;

	Escribir "Tarjeta " Sin Saltar;

	Leer card;

	Escribir "Compra " Sin Saltar;

	Leer total;

	
	// Process
	Si Minusculas(brand) = BRAND_TARGET Y Minusculas(card) = CARD_TARGET Y total >= TOTAL_TARGET Entonces
		discRate = azar(25)+1;

		discount = total * discRate / 100;

		total = total - discount;
	FinSi

	
	// Outputs

	Escribir "";

	Escribir "Descuento del...", discRate, "%";

	Escribir "Descuento.......", discount;

	Escribir "Total a pagar...", total;
FinAlgoritmo
























