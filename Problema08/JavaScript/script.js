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
    let total, discount = 0.00, discRate = 0;
    let brand, card;
    const TOTAL_TARGET = 200.00;
    const BRAND_TARGET = "nike";
    const CARD_TARGET = "visa";

    // Inputs
    try{
      brand = text("brand");
      card = text("card");
      total = decimal("shop");    
    }catch(e){
        console.log(`Se produjo el siguente error: ${e.message}`);
    }

    // Process
    if(brand.toLowerCase() == BRAND_TARGET && card.toLowerCase() == CARD_TARGET && total >= TOTAL_TARGET){
      discRate = Math.floor(Math.random() * 25) + 1;
      discount = total * discRate / 100;
      total -= discount;
    }

    // Outputs
    print("discRate",`Descuento del...&nbsp; ${discRate}%`);
    print("discount",`Total descuento...&nbsp; ${mFormat(discount)}`);
    print("total",`Total a pagar.........&nbsp;${mFormat(total)}`);
}










