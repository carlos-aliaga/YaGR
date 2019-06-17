/****************************************************************************************************************************
    precise_movement(xspeed,yspeed,obstacle)
-----------------------------------------------------------------------------------------------------------------------------
    movimiento preciso con movimientos horizontal y vertical separados
****************************************************************************************************************************/
{
    // obstaculo del movimiento
    obstacle = argument2;
    
    // obtenemos direcciones: vertical y horizontal
    dirh = sign(argument0);
    dirv = sign(argument1);
    
    // para la velocidad de precision
    pspeed = 0;
    
    // loop horizontal    
    while (pspeed*dirh < argument0*dirh)
    {    
        // si se encuentra un obstaculo en la velocidad_precision actual, se sale del while
        if place_meeting(x+pspeed+dirh,y,obstacle) 
            break;
        else
        {
            // si se encuentra en una esquina, se puede doblar 
            if !place_meeting(x+pspeed+dirh,y+dirv,obstacle) && place_meeting(x,y+dirv,obstacle)
                y += dirv;    
            // en este caso, velocidad_precision cambia
            pspeed += dirh;
        }
    }
    
    // movemos en x
    x += pspeed;
    
    // reseteamos la velocidad de precision obtenida
    pspeed = 0;
    
    // velocidad de precision en y
    while (pspeed*dirv < argument1*dirv)
    {
        // si se encuentra un obstaculo en la velocidad_precision actual, se sale del while
        if place_meeting(x,y+pspeed+dirv,obstacle) break;
        else
        {
            // si se encuentra en una esquina, se puede doblar 
            if !place_meeting(x+dirh,y+pspeed+dirv,obstacle) 
            && place_meeting(x+dirh,y,obstacle)
                x += dirh;
    
            // en este caso, velocidad_precision cambia
            pspeed += dirv;
        }
    }
    
    // movemos en y
    y += pspeed;
}