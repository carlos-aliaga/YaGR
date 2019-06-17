/// @description  Setea atributos armas

//show_message(string(global.Direccion) + " " + string(global.Disparo) );
direction = global.Direccion;
switch (global.HeroeElegido) {
        case 0:
            image_speed = 0.45;
            sprite_index = sHacha;
            speed = global.VelocidadDisparo;    // Velocidad del disparo
        break;
        case 1:            
            image_speed = 0; // Sin animacion
            sprite_index = global.SpriteFlecha[global.Disparo];
            image_index = global.Disparo;
            speed = global.VelocidadDisparo;    // Velocidad del disparo
        break;
        case 2:      
            image_speed = 0;  // Sin animacion
            sprite_index = global.SpriteEspada[global.Disparo];
            image_index = global.Disparo;
            speed = global.VelocidadDisparo;    // Velocidad del disparo
        break;
        case 3: 
            image_speed = 0.65;
            sprite_index = global.SpriteFuego[global.Disparo];
            image_index = global.Disparo;
            speed = global.VelocidadDisparo;    // Velocidad del disparo
        break;
}
tiempo=0
distancia_recorrida = 0;


