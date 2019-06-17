{
    { // Si ya no tiene energia se destruye
        // La instancia contra la que collisiona
        with(other) {
            // Buscar cuantas instancias de este generador hay en el mapa
            amount = ds_map_find_value(global.mapaSpawn, generador); 
            // Decrementamos las instancias
            amount--;
            // Actualizamos el Diccionario de instancias, ahora ya se puede regenerar una nueva instancia del objeto
            ds_map_replace(global.mapaSpawn, generador, amount);
            // Destruimos el objeto
            instance_destroy();
        }        
    }    
    // Destruimos el objeto ARMA
    with(self) {
            instance_destroy();
        }
}

