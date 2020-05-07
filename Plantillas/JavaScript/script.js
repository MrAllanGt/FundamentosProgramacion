// Función para leer y devolver enteros
function whole(id){
	return parseInt(document.getElementById(id).value);
}

// Función para leer y devolver decimales
function decimal(id){
	return parseFloat(document.getElementById(id).value);
}

// Función para leer y devolver texto
function text(id){
	return document.getElementById(id).value;
}

// Función para mostrar contenido en elementos HTML
function print(id, message){
    document.getElementById(id).innerHTML = message;
}

function result(){
    // Declaración de variables
    let a, b;
    
    // Entradas
    try{
        a = whole("a");
        b = whole("b");
    }catch(e){
        console.log(`Se produjo el siguente error: ${e.message}`);
    }

    // Procesos y salidas
    let result = a + b;
    print("sum",`Total = ${result}`);
}