/// @description  Setea la direccion donde debe salir el disparo
{   
    switch (argument0)
       {          
           case 0:
           case 8: 
           case 16: 
           case 24:
                global.Direccion = 315;
                global.Disparo = 0;
           break;
           case 1:
           case 9: 
           case 17:
           case 25:
                global.Direccion = 270;
                global.Disparo = 1;
           break;
           case 2:
           case 10: 
           case 18:
           case 26:
                global.Direccion = 225;
                global.Disparo = 2;
           break;
           case 3:
           case 11:            
           case 19:
           case 27:
                global.Direccion = 180;
                global.Disparo = 3;
           break;
           case 4:
           case 12: 
           case 20:
           case 28:
                global.Direccion = 135;
                global.Disparo = 4;
           break;
           case 5:
           case 13: 
           case 21:
           case 29:
                global.Direccion = 90;
                global.Disparo = 5;
           break;
           case 6:
           case 14: 
           case 22:
           case 30:
                global.Direccion = 45;
                global.Disparo = 6;
           break;
           case 7:
           case 15:
           case 23:
           case 31:
                global.Direccion = 0;
                global.Disparo = 7;
           break;
       }
}