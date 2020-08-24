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
    let pinInput, amount, balance = 1000;
    const PIN = "2020";

    // Inputs
    try{
        pinInput = text("pin");
    }catch(e){
        console.log(`Se produjo el siguente error: ${e.message}`);
    }

    // Process & Outputs
    if(pinInput == PIN){
      amount = parseFloat(prompt("Ingrese cantidad a retirar: "));

      if(amount <= balance){
        balance -= amount;
        print("msg",`Saldo: ${mFormat(balance)}`);
      }else{
        print("msg","Saldo insuficiente.<br>No se realizó ninguna transacción.");
      }
    }else{
      print("msg","¡PIN incorrecto!");
    } 
}