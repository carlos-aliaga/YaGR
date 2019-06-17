// Si se puede utilizar una llave (esta disponible)
if(sUsaLlave()){
    with(other){
        instance_destroy(); // Destruir el objeto puerta
        global.Llaves--;    // Utilizamos una llave
    }
}
else {
    a=0;
}

