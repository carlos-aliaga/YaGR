{
    draw_self();  

    return 0;
    if distance_to_object(oPlayer) <= MaxDistancia {
        draw_circle(x,y, distance_to_object(oPlayer),1);
        if !collision_line(x,y,oPlayer.x,oPlayer.y,oParedSolida,true,true) {
            draw_line(x,y,oPlayer.x,oPlayer.y);
            angulo = arctan2(oPlayer.y-y,oPlayer.x-x) * 180/pi;
            draw_text(x+15,y-90,string_hash_to_newline(string( oPlayer.y ) + ":" + string( oPlayer.x) ));
            draw_text(x+15,y-70,string_hash_to_newline(string( y ) + ":" + string( x) ));
            draw_text(x+15,y-50,string_hash_to_newline(string( arctan2(oPlayer.y-y,oPlayer.x-x)) ));
            draw_text(x+15,y-30,string_hash_to_newline(string( angulo) ));
            draw_text(x+15,y-20,string_hash_to_newline(string( round (abs( ( image_angle / 45))))));
            draw_text(x+15,y-10,string_hash_to_newline(string( image_angle) ));
        }
    }    
}


