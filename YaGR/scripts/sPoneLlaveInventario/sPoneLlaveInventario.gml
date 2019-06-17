// Si Existe espacio en el inventario
if(sEspacioEnInventario()) {
    // Calcular en que posicion se debe poner
    i = 0;
    repeat(8) {
        if(global.Inventario[i] = 0) {
           global.Inventario[i] = 2;
           return true; 
        }
        i++;
    }
}
return false;