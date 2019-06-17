{
    vx = (keyboard_check(vk_right) - keyboard_check(vk_left)) * 4;
    vy = (keyboard_check(vk_down) - keyboard_check(vk_up)) * 4;    
    if (vx != 0 || vy != 0) // If any direction key is pressed.
    {    
        // Sets the correct sprite for the direction the player is pushing in, and animation speed.
        sprite_index = global.SpriteHeroe[round(point_direction(0, 0, vx, vy) / 45) mod 8];         
        // Setear la direccion   
        scrDireccion(sprite_index);
        image_speed = 0.4;   
        /*  
        if (place_free(x + vx, y + vy)) { // Check if you can actually move into the direction.
            //y += vy * scrVelocidadPlayer(); //Wait a minute, why would you make 2 checks? vx could be zero, so adding x with zero would give the same x...
            //x += vx * scrVelocidadPlayer();
            image_speed = 0.4; //Image speed is only 0.4 when you can actually move
        } 
        else {
            image_speed = 0;
        }
        */        
        /// ????????????????????
        if keyboard_check(vk_control){
            precise_movement( ((vx/4) * (scrVelocidadPlayer()*0.1)), ((vy/4) * (scrVelocidadPlayer()*0.1)), oSolido); 
        }
        else {
            precise_movement( ((vx/4) * scrVelocidadPlayer()), ((vy/4) * scrVelocidadPlayer()), oSolido); 
        }
    }
    else { // If no direction key is pressed.
        image_speed = 0;
    }

    // En mapas grandes desctivamos los objetos que no estan en la vista/pantalla 
    // Con esto se ahorra memoria
    
    /*instance_activate_all();
    instance_deactivate_region(view_xview[0],view_yview[0],
                        view_wview[0],view_hview[0],false,true);*/                        
}

/* */
/*  */
