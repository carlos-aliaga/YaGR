{

// Daña al heroe, segun el daño que tenga el enemigo
    global.Salud = global.Salud - self.ataque;

// Actualiza mapa de enemigos y destruye la instancia
    with(self) {
        amount = ds_map_find_value(global.mapaSpawn, generador); 
        amount--;
        ds_map_replace(global.mapaSpawn, generador, amount);
        instance_destroy();
    }
}


