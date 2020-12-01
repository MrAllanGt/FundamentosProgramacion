Algoritmo GradeSystem
	// ANÁLISIS DEL PROBLEMA
	// Outputs:	msg, avg
	// Inputs:	s1, s2, s3   
	// Aux:		SESSIONS, SESSIONS_MIN, COURSE_MIN
	
	// DISEÑO DEL ALGORITMO
	// Vars/Cons
	Definir s1, s2, s3 como Entero;
	Definir SESSIONS, SESSIONS_MIN, COURSE_MIN Como Entero;
	Definir avg como Real;
	Definir msg Como Texto;
	SESSIONS = 3;
	SESSIONS_MIN = 61;
	COURSE_MIN = 71;
	
	// Inputs
	Escribir "Sesión #1" Sin Saltar;
	Leer s1;
	Escribir "Sesión #2" Sin Saltar;
	Leer s2;
	Escribir "Sesión #3" Sin Saltar;
	Leer s3;
	
	// Process & Outputs
	avg = (s1 + s2 + s3) / SESSIONS;
	
	Si s1 >= SESSIONS_MIN Y s2 >= SESSIONS_MIN Y s3 >= SESSIONS_MIN Y avg >= COURSE_MIN Entonces
		msg = ":) Se aprobó ";
	SiNo
		msg = ":( No se aprobó ";
	FinSi
	
	Escribir "";
	Escribir msg, " el curso.";
	Escribir "Promedio final: ", avg;
FinAlgoritmo








