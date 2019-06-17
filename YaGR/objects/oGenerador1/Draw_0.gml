//draw_text(x-10,y-30,string(Instancia));
//draw_self();
draw_sprite_ext(sprite_index,image_index,x+3,y-7,image_xscale,image_yscale,image_angle,c_black,0.5);
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);

var pc;
pc = (hp / max_hp) * 100;
draw_healthbar(x - 10, y - 15, x + 20, y - 17, pc, c_black, c_red, c_lime, 0, true, false);




