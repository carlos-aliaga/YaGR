// Buscar la primera pocion disponible
i = 0;
repeat(8) {
    if(global.Inventario[i] = 1) {         
        global.Inventario[i] = 0; // Utilizamos la pocion
        return true;  // pocion usada
    }
    i++;
}
return false; // No existe pocion que utilizar