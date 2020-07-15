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
     // Vars / Cons
    let num, rand;
    const WIN ="¡Adivinaste! :) <br>El número es: ";
    const LOSE = "¡Inténtalo de nuevo! :( <br>El número es: ";

    // Inputs
    try{
        num = whole("num");
    }catch(e){
        console.log(`Se produjo el siguente error: ${e.message}`);
    }

    // Process & Outputs
    rand = Math.floor(Math.random() * 5) + 1;
    print("msg", num == rand ? WIN + rand : LOSE + rand);
}
