/// Where We're Going, We Don't Need Roads
{   
    // Solo generar cuando exista una distancia minima al Jugador
  /* if instance_exists(obj_player) and 
        (distance_to_object(obj_player) > MaxDistancia){
            //exit;
        }*/
    
    //scrSpawn(self,oLobber);
    var oObj;
    oObj = argument1;
    //if( instance_number(self) > MaxEnemigosPantalla) exit; // Solo podemos controlar un numero finito de instancias de objetos para que no sea muy lento
    with (self) {                 
        
        // Si este objeto ya esta en el mapa de instancias
        if ds_map_exists(global.mapaSpawn, argument0.id) {
                // Si ya genero el maximo de instancias permitidas, no hacemos nada             
                if(ds_map_find_value(global.mapaSpawn, argument0.id) >= 3){
                    exit;
                }
            }
        else {
            // Añadimos el objeto en el mapa de instancias 
            ds_map_add(global.mapaSpawn, argument0.id, 0);
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
        iCreada.generador = argument0.id; // Id del generador, este atributo esta en cada instancia del objeto
        self.Instancia++;        
        // Añadimos el generador al mapa de enemigos
            // Verificar si no esta en el mapa
            amount = ds_map_find_value(global.mapaSpawn, iCreada.generador); 
            amount++;
            ds_map_replace(global.mapaSpawn, argument0.id, amount); 
        // Alineamos con la rejilla del mapa
        with (iCreada) {
            if place_free(x+32,y+32){
                if !place_snapped(32, 32){
                    move_snap(32, 32);
                }
            }
        }
    }  
    return 0;  
}