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

// Función para formato de moneda
function mFormat(num){
  return (
    num
      .toFixed(2)
      .replace(/\B(?=(\d{3})+(?!\d))/g, ",")
  )
}

function result(){
    // Vars / Cons
    let people, foodCost, drinksCost, decoCost, catering, total;
    const FOOD = 32.50;
    const FOOD_PER = 0.15;
    const DRINKS = 10.50;
    const DRINKS_PER = 0.10;
    const DECO = 5.50;
    const DECO_PER = 0.05;

    // Inputs
    try{
      people = whole("people");    
    }catch(e){
        console.log(`Se produjo el siguente error: ${e.message}`);
    }

    // Process
    foodCost = people * FOOD;
    drinksCost = people * DRINKS;
    decoCost = people * DECO;
    catering = (foodCost * FOOD_PER) + (drinksCost * DRINKS_PER) + (decoCost * DECO_PER);
    total = foodCost + drinksCost + decoCost + catering;

    // Outputs
    print("food",`Comida ${mFormat(foodCost)}`);
    print("drinks",`Bebidas ${mFormat(drinksCost)}`);
    print("deco",`Decoración ${mFormat(decoCost)}`);
    print("catering",`Catering ${mFormat(catering)}`);
    print("total",`Total ${mFormat(total)}`);
}