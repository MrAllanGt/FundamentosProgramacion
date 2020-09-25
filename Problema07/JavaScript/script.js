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
    let log = false;
    let user, pass;
    const USER_ADMIN = "admin";
    const USER_MASTER = "master";
    const PASSWORD = "fdp2020*";

    // Inputs
    try{
      user = text("user");
      pass = text("pass");    
    }catch(e){
        console.log(`Se produjo el siguente error: ${e.message}`);
    }

    // Process & Outputs
    if((user.toLowerCase() == USER_ADMIN || user.toLowerCase() == USER_MASTER) && pass.toLowerCase() == PASSWORD)
      log = true;

    if(!log)
      print("msg","¡Usuario o contraseña incorrecta!");
    else
      print("msg",`¡Bienvenido(a) ${user.toUpperCase()}!`);
}