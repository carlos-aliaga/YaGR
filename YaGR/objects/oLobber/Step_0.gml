/// @description  Lobber
{       
    // Si el Player esta vivo
    if instance_exists(oPlayer){
        // Corta distancia y visto. Este enemigo puede verte sobre las paredes
        if  distance_to_object(oPlayer) <= MaxDistancia {            
            // Disparar
            if(PuedeDisparar){
                bullet_id = instance_create(x, y, oLobberShot);                    
                bullet_id.direction = point_direction(x,y,oPlayer.x,oPlayer.y) ;
                bullet_id.speed = 5; 
                PuedeDisparar = false;               
            }            
            inst = instance_nearest(x, y, oPlayer);
            mp_potential_step(inst.x,inst.y,3,1);
            
            
            //game_end();
            //speed=0;
        }
        else {
            // No lo vé
            ranx = x - 160 + random(320);
            rany = y - 160 + random(320);
            
            ranx = median( 0, ranx, room_width - 248 );
            rany = median( 0, rany, room_height );

            mp_potential_step(ranx,rany,2,1);
        }
       /* plat=collision_rectangle(x-sprite_xoffset-1,y-sprite_yoffset+1,x+sprite_xoffset+1,y+sprite_yoffset-1,Plataforma_Movible,1,1)
if plat{
    if ((y+sprite_yoffset) > plat.y) {
        var atras;
        atras=plat.x+sprite_get_width(plat.sprite_index)/2 > x;
        move_contact_solid(atras*180,max(1,(abs(plat.hspeed))*(sign(atras-.5)!=sign(plat.hspeed))))
    }
}*/

       // Segun la direccion que tome, calcula el sprite a utilizar
       image_index = 0;//direction / 45;        
    }   
}

/* */
/*  */
