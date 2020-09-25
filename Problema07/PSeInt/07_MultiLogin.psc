Algoritmo MultiLogin
	// --- ANÁLISIS DEL PROBLEMA ---
	// Outputs:	log, user
	// Inputs:	user, pass
	// Aux:		USER_ADMIN, USER_MASTER, PASSWORD
	
	// --- DISEÑO DEL ALGORITMO ---
	// Vars & cons
	Definir log Como Logico;
	Definir user, pass Como Texto;
	Definir USER_ADMIN, USER_MASTER, PASSWORD Como Texto;
	log = falso;
	USER_ADMIN = "admin";
	USER_MASTER = "master";
	PASSWORD = "fdp2020*";
	
	// Inputs
	Escribir " - LOGIN - ";
	Escribir "User " Sin Saltar;
	Leer user;
	Escribir "Password " Sin Saltar;
	Leer pass;
	
	// Process & Outputs
	Limpiar Pantalla;
	Si (Minusculas(user) = USER_ADMIN O Minusculas(user) = USER_MASTER) Y Minusculas(pass) = PASSWORD Entonces
		log = Verdadero;
	FinSi
	
	Si No log Entonces
		Escribir "¡Usuario o password incorrecto!";
	Sino
		Escribir "¡Bienvenido(a) ", Mayusculas(user), "!";
	FinSi
FinAlgoritmo













