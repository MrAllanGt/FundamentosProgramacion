Algoritmo AirTime
	// ANÁLISIS DEL PROBLEMA
	// Outputs:	airTime, phone
	// Inputs:	recharge, phone
	// Aux:		MIN_COST, PROMO_COST
	
	// DISEÑO DEL ALGORITMO
	// Vars/Cons
	Definir phone como Texto;
	Definir aTime, recharge, MIN_COST, PROMO_COST como real;
	MIN_COST = 1.20;
	PROMO_COST = 0.60;
	
	// Inputs
	Escribir "Número de teléfono " Sin Saltar;
	Leer phone;
	Escribir "Monto de recarga " Sin Saltar;
	Leer recharge;
	
	// Process
	Si recharge > 100 Entonces
		aTime = redon(recharge / PROMO_COST);
	SiNo
		aTime = redon(recharge / MIN_COST);
	FinSi
	
	// Outputs
	Escribir "";
	Escribir "¡Recarga exitosa!";
	Escribir " Se acreditó al número ", phone , ": ", aTime, " minutos de saldo";
	
FinAlgoritmo






