//draw_self();

draw_sprite_ext(sprite_index,image_index,x+3,y-7,image_xscale,image_yscale,image_angle,c_black,0.5);
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);

draw_text(x,y-20,string_hash_to_newline(string(distancia_recorrida)));

//show_message(string(global.Direccion) + " " + string(global.Disparo) );
//draw_text(x,y,string(global.Direccion) + " " + string(global.Disparo));

//draw_text(x,y,string(tiempo));

