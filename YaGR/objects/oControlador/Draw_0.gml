// Fondo del room
   //draw_sprite(sMosaico1, 0, 0, 0);
   //draw_sprite_tiled(sMosaico1, 0,0,0);
    

// Panel datos Heroe
    // Fondo
    draw_set_color(c_black);
    draw_rectangle(__view_get( e__VW.XView, 0 )+425, __view_get( e__VW.YView, 0 ), __view_get( e__VW.XView, 0 )+425+216, __view_get( e__VW.YView, 0 )+480, false); 
    // Logo
    draw_sprite(sLogo, 0, __view_get( e__VW.XView, 0 )+425, __view_get( e__VW.YView, 0 )-25);
    
    //Panel, segun el hero elegido
    if(global.HeroeElegido=THOR) {
        draw_sprite(sPanelThor, 0, __view_get( e__VW.XView, 0 )+425, __view_get( e__VW.YView, 0 )+75);    
    }
    if(global.HeroeElegido=VALQUIRIA) {
        draw_sprite(sPanelValkiria, 0, __view_get( e__VW.XView, 0 )+425, __view_get( e__VW.YView, 0 )+75);    
    }
    if(global.HeroeElegido=WIZARD) {
        draw_sprite(sPanelWizard, 0, __view_get( e__VW.XView, 0 )+425, __view_get( e__VW.YView, 0 )+75);    
    }
    if(global.HeroeElegido=ELF) {
        draw_sprite(sPanelElf, 0, __view_get( e__VW.XView, 0 )+425, __view_get( e__VW.YView, 0 )+75);    
    }
        
/*    draw_sprite(sPanelThor, 0, view_xview+425, view_yview+75);        
    draw_sprite(sPanelValkiria, 0, view_xview+425, view_yview+175);
    draw_sprite(sPanelWizard, 0, view_xview+425, view_yview+275);
    draw_sprite(sPanelElf, 0, view_xview+425, view_yview+375);
*/
    
    // Si el heroe tiene algun poder lo dibujamos
    if(oPlayer.extraArmor = 0) {
        draw_sprite(sMascaras, 0, __view_get( e__VW.XView, 0 )+450, __view_get( e__VW.YView, 0 )+135);
    }
    if(oPlayer.extraSpeed = 0) {
        draw_sprite(sMascaras, 3, __view_get( e__VW.XView, 0 )+485, __view_get( e__VW.YView, 0 )+135);
        }
    if(oPlayer.extraShot = 0) {
        draw_sprite(sMascaras, 6, __view_get( e__VW.XView, 0 )+520, __view_get( e__VW.YView, 0 )+135);
        }
    if(oPlayer.extraMagic = 0) {
        draw_sprite(sMascaras, 9, __view_get( e__VW.XView, 0 )+555, __view_get( e__VW.YView, 0 )+135);
        }
    if(oPlayer.extraShotSpeed = 0) {
        draw_sprite(sMascaras, 21, __view_get( e__VW.XView, 0 )+590, __view_get( e__VW.YView, 0 )+135);
    }
    if(oPlayer.extraArmor = 0) {
        draw_sprite(sPoderes, 0, __view_get( e__VW.XView, 0 )+450, __view_get( e__VW.YView, 0 )+135);
    }
    
    
    if(oPlayer.extraArmor = 0) {
        draw_sprite(sPoderes, 0, __view_get( e__VW.XView, 0 )+450, __view_get( e__VW.YView, 0 )+135);
    }
    if(oPlayer.extraSpeed = 0) {
        draw_sprite(sPoderes, 3, __view_get( e__VW.XView, 0 )+485, __view_get( e__VW.YView, 0 )+135);
        }
    if(oPlayer.extraShot = 0) {
        draw_sprite(sPoderes, 6, __view_get( e__VW.XView, 0 )+520, __view_get( e__VW.YView, 0 )+135);
        }
    if(oPlayer.extraMagic = 0) {
        draw_sprite(sPoderes, 9, __view_get( e__VW.XView, 0 )+555, __view_get( e__VW.YView, 0 )+135);
        }
    if(oPlayer.extraShotSpeed = 0) {
        draw_sprite(sPoderes, 21, __view_get( e__VW.XView, 0 )+590, __view_get( e__VW.YView, 0 )+135);
    }
    

    
    // Inventario
    var i;
    var vPrimeraCasilla = 448;
    for (i = 0; i < 8; i += 1){
        switch(global.Inventario[i]) {
            case 1:
                draw_sprite(sPocionPanel, 0, __view_get( e__VW.XView, 0 )+vPrimeraCasilla, __view_get( e__VW.YView, 0 )+113);
            break;
            case 2:            
                draw_sprite(sLlavePanel, 0, __view_get( e__VW.XView, 0 )+vPrimeraCasilla, __view_get( e__VW.YView, 0 )+113);
            break;
        }
        vPrimeraCasilla+=23;
    }

    
        
    // Puntaje    
    draw_set_color(c_white);
    //draw_text(view_xview+559, view_yview+89, sRellenaCero(global.Puntaje,6));

    draw_text(__view_get( e__VW.XView, 0 )+559, __view_get( e__VW.YView, 0 )+89, string_hash_to_newline(sRellenaCero(global.Salud,6)));       
    
    //draw_text( view_xview, view_yview, string(scrVelocidadPlayer()));
    
   // draw_text(view_xview+0, view_yview+0, "FPS: " + string(objeto));

    //draw_healthbar(view_xview+445, view_yview+93, view_xview+553, view_yview+100, global.Salud, c_black, c_red, c_lime, 0, true, true);
    
/*    draw_healthbar(view_xview+445, view_yview+193, view_xview+553, view_yview+200, global.Salud, c_black, c_red, c_lime, 0, true, true);
    draw_healthbar(view_xview+445, view_yview+293, view_xview+553, view_yview+300, global.Salud, c_black, c_red, c_lime, 0, true, true);
    draw_healthbar(view_xview+445, view_yview+393, view_xview+553, view_yview+400, global.Salud, c_black, c_red, c_lime, 0, true, true);*/
    
    draw_text(mouse_x, mouse_y+50, string_hash_to_newline(string(mouse_x) + " " + string(mouse_y)));

/* */
/*  */
