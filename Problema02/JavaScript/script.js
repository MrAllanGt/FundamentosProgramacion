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
    let area, perimeter, sideA, sideB, sideC, semiP;

    // Inputs
    try{
      sideA = decimal("sideA");
      sideB = decimal("sideB");
      sideC = decimal("sideC");
    }catch(e){
      console.log(`Se produjo el siguente error: ${e.message}`);
    }

    // Process
    perimeter = sideA + sideB + sideC;
    semiP = perimeter / 2.0;
    area = Math.sqrt(semiP * (semiP - sideA) * (semiP - sideB) * (semiP - sideC));

    // Outputs
    print("area",`Área = ${area.toFixed(4)}`);
    print("perimeter",`Perímetro = ${perimeter.toFixed(4)}`);
}