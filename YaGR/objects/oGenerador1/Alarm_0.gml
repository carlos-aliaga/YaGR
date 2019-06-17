{   
    alarm[0]=25;
    scrSpawn(self,oFantasma);    
    return 0;
    
    /*
    //scrSpawn(self,oLobber);
    var oObj;
    oObj = oFantasma;
    //if( instance_number(self) > MaxEnemigosPantalla) exit; // ???
    with (self) {                 
        //if Instancia = 5 exit;      // Máximo de instancias por cada generador
        if ds_map_exists(global.mapaSpawn, self.id) {  // Esta en el mapa           
                if(ds_map_find_value(global.mapaSpawn, self.id)>=3){
                    exit;
                }
            }
        else {
            ds_map_add(global.mapaSpawn, self.id, 0);
        }
        
        RanGen = floor(random(8)); // El sitio donde se crea la instancia es aleatorio
        iCreada = 0;
        switch (RanGen) {
            case 0:
                if place_free(x-32,y-32) {iCreada = instance_create(x-48,y-32,oObj);}
            break;
            case 1:
                if place_free(x,y-32) {iCreada = instance_create(x-16,y-32,oObj);}
            break;
            case 2:
                if place_free(x+32,y-32) {iCreada = instance_create(x+16,y-32,oObj);}
            break;
            case 3:
                if place_free(x-32,y) {iCreada = instance_create(x-48,y,oObj);}
            break;
            case 4:
                if place_free(x+32,y) {iCreada = instance_create(x+16,y,oObj);}
            break;
            case 5:
                if place_free(x-32,y+32) {iCreada = instance_create(x-48,y+32,oObj);}
            break;    
            case 6:
                if place_free(x,y+32) {iCreada = instance_create(x-16,y+32,oObj);}
            break;
            case 7:
                if place_free(x+32,y+32) {iCreada = instance_create(x+16,y+32,oObj);}
            break;      
        }
    }
    // Solamente si se ha creado exitosamente la instancia, se incrementan los contadores 
    if(iCreada!=0){
        iCreada.generador = self.id; // Id del generador, este atributo esta en cada instancia del objeto
        self.Instancia++;        
        // Añadimos el generador al mapa de enemigos
            // Verificar si no esta en el mapa
            amount = ds_map_find_value(global.mapaSpawn, iCreada.generador); 
            amount++;
            ds_map_replace(global.mapaSpawn, self.id, amount); 
        
        with (iCreada) {
            if place_free(x+32,y+32){
                if !place_snapped(32, 32){
                    move_snap(32, 32);
                }
            }
        }
    }
    */
}

/* */
/*  */
