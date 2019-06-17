{               
    // Si el Player esta vivo
    if instance_exists(oPlayer){        
        // Corta distancia y visto
        if  distance_to_object(oPlayer) <= MaxDistancia and
            !collision_line(x,y,oPlayer.x,oPlayer.y,oParedSolida,true,true) 
            {                       
                inst = instance_nearest(x, y, oPlayer);
                mp_potential_step(inst.x,inst.y,self.velocidad,false);
                //mp_potential_step(inst.x,inst.y,0.1,false);
                
                //action_linear_step(inst.x,inst.y,3,0);
                //action_potential_step(inst.x,inst.y,3,0);
                /*if place_meeting(x,y,oPlayer) {
                    instance_destroy();
                }*/
            }        
        else{   
            // No lo vé
            ranx = x - 160 + random(320);
            rany = y - 160 + random(320);              
            //mp_potential_step(ranx,rany,2,false);     
        }        
        
        // En cualquier caso, haremos un cambio de sprite segun la direccion 
        indice = round (abs(direction / 45 ));
        switch (indice)
           {
            case 0:
            case 8: // No deberia ser necesario, pero....
                if(sprite_index!=sGhost0) {
                    sprite_index=sGhost0;
                    image_index=choose(0,1,2);                    
                }
            break;            
            case 1:
                if(sprite_index!=sGhost1) {
                    sprite_index=sGhost1;
                    image_index=choose(0,1,2);                    
                }
            break;  
            case 2:
                if(sprite_index!=sGhost2) {
                    sprite_index=sGhost2;
                    image_index=choose(0,1,2);                    
                }
            break; 
            case 3:
                if(sprite_index!=sGhost3) {
                    sprite_index=sGhost3;
                    image_index=choose(0,1,2);                    
                }
            break;
            case 4:
                if(sprite_index!=sGhost4) {
                    sprite_index=sGhost4;
                    image_index=choose(0,1,2);                    
                }
            break;
            case 5:
                if(sprite_index!=sGhost5) {
                    sprite_index=sGhost5;
                    image_index=choose(0,1,2);                    
                }
            break;
            case 6:
                if(sprite_index!=sGhost6) {
                    sprite_index=sGhost6;
                    image_index=choose(0,1,2);                    
                }
            break;
            case 7:
                if(sprite_index!=sGhost7) {
                    sprite_index=sGhost7;
                    image_index=choose(0,1,2);                    
                }
            break;          
           }
        image_speed=0.15;
    }
}

/* */
/*  */
