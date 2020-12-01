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
    let s1, s2, s3, avg, msg;
    const SESSIONS = 3;
    const SESSIONS_MIN = 61;
    const COURSE_MIN = 71;

    // Inputs
    try{
      s1 = whole("s1");
      s2 = whole("s2");
      s3 = whole("s3");    
    }catch(e){
        console.log(`Se produjo el siguente error: ${e.message}`);
    }

    // Process & Outputs
    avg = (s1 + s2 + s3) / SESSIONS;
    
    if(s1 >= SESSIONS_MIN && s2 >= SESSIONS_MIN && s3 >= SESSIONS_MIN && avg >= COURSE_MIN)
      msg = ":) Se aprobó ";
    else
      msg = ":( No se aprobó ";

    print("grade",`${msg} el curso.</br>Promedio final: ${Math.round(avg)}`);  
}