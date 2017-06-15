// Buscar la primera llave disponible
i = 0;
repeat(8) {
    if(global.Inventario[i] = 2) {         
        global.Inventario[i] = 0; // Utilizamos la llave
        return true;  // Llave usada
    }
    i++;
}
return false; // No existe llave que utilizar