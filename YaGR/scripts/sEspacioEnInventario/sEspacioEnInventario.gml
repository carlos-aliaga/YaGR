// Recorrer el inventario para ver si hay espacio
i = 0;
repeat(8) {
    if(global.Inventario[i] = 0) {   // Existe espacio
        return true;
    }
    i++;
}
return false;