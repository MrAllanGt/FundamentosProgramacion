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
    let phone, aTime, recharge;
    const MIN_COST = 1.20;
    const PROMO_COST = MIN_COST / 2;

    // Inputs
    try{
        phone = text("phone");
        recharge = decimal("recharge");
    }catch(e){
        console.log(`Se produjo el siguente error: ${e.message}`);
    }

    // Process
    if(recharge > 100)
      aTime = recharge / PROMO_COST;
    else
      aTime = recharge / MIN_COST;

    // Outputs
    print("msg",`¡Recarga exitosa! <br/>Se acreditó al número ${phone}: ${Math.round(aTime)} minutos de saldo.`);
}