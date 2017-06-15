// Recorrer el inventario para ver si hay espacio
i = 7;
repeat(10) {
    if(array[i] > 0) {   // Existe espacio
        return true;
    }
    i -= 1;
}
return false;
