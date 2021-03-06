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
    let a, b, c, total;

    // Inputs
    try{
      a = whole("a");
      b = whole("b");
      c = whole("c");
    }catch(e){
        console.log(`Se produjo el siguente error: ${e.message}`);
    }

    // Process & Outputs
   total = (a + b) * c;
   print("one",`a + b * c = ${total}`);

   total = (b + a) % c;
   print("two",`b + a mod c = ${total}`);

   total = b / (a % c);
   print("three",`b / a mod c = ${total}`);
}



















