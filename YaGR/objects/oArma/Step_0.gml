/// @description  Limite de rango de un disparo hacia la derecha
if(x>=__view_get( e__VW.XView, 0 )+415)
    instance_destroy();
    
if position_meeting(x, y,oSolido)
    instance_destroy();

tiempo+=1;
distancia_recorrida++;

