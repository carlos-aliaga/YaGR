{ 
    // Si el Player esta vivo
    if instance_exists(oPlayer){
        // Corta distancia y visto
        if  distance_to_object(oPlayer) <= MaxDistancia and
            !collision_line(x,y,oPlayer.x,oPlayer.y,oParedSolida,true,true) {            
                inst = instance_nearest(x, y, oPlayer);
                mp_potential_step(inst.x,inst.y,2.5,1);                              
                // Disparar
                if(PuedeDisparar){
                    bullet_id = instance_create(x, y, oDemonioShot);                    
                    bullet_id.direction = point_direction(x,y,oPlayer.x,oPlayer.y);                    
                    bullet_id.speed = 3.5; 
                    PuedeDisparar = false;
                }
            }        
        else{                
            // No lo vé
            ranx = x - 160 + random(320);
            rany = y - 160 + random(320);              
            //mp_potential_step(ranx,rany,0.5,1);            
        }        
        image_index = direction / 45;        
    }
}    

