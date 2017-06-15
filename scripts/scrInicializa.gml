// Mapa de enemigos
    global.mapaSpawn = ds_map_create();
    //ds_map_add(inventory, "hp potion", 1);
    //ds_map_add(mapaSpawn, idGenerador, numSpawns); por cada generador ++/-- el numero de sus spawns

// global.SpriteHeroe directions
    global.Puntaje = 0;
    global.Llaves = 2;
    global.Pociones = 1;

// Array de llaves y pociones
   global.Inventario[0] = 0;
   global.Inventario[1] = 0;
   global.Inventario[2] = 0;
   global.Inventario[3] = 0;
   global.Inventario[4] = 0;
   global.Inventario[5] = 0;
   global.Inventario[6] = 0;
   global.Inventario[7] = 0;

    var indice = 1;
    switch (global.HeroeElegido) {
            case THOR:
                global.SpriteHeroe[0] = sWarriorE;
                global.SpriteHeroe[1] = sWarriorNE;
                global.SpriteHeroe[2] = sWarriorN;
                global.SpriteHeroe[3] = sWarriorNW;
                global.SpriteHeroe[4] = sWarriorW;
                global.SpriteHeroe[5] = sWarriorSW;
                global.SpriteHeroe[6] = sWarriorS;
                global.SpriteHeroe[7] = sWarriorSE;

                global.Velocidad = 2.5;
                global.VelocidadDisparo = 4.5;
                global.Salud = 100;
                global.Hambre = 100;
                global.Magia = 35;
                indice = 1; // Donde inicia su Sprite
            break;
            case ELF:
                global.SpriteHeroe[0] = sElfE;
                global.SpriteHeroe[1] = sElfNE;
                global.SpriteHeroe[2] = sElfN;
                global.SpriteHeroe[3] = sElfNW;
                global.SpriteHeroe[4] = sElfW;
                global.SpriteHeroe[5] = sElfSW;
                global.SpriteHeroe[6] = sElfS;
                global.SpriteHeroe[7] = sElfSE;

                global.SpriteFlecha[0] = sFlecha0;
                global.SpriteFlecha[1] = sFlecha1;
                global.SpriteFlecha[2] = sFlecha2;
                global.SpriteFlecha[3] = sFlecha3;
                global.SpriteFlecha[4] = sFlecha4;
                global.SpriteFlecha[5] = sFlecha5;
                global.SpriteFlecha[6] = sFlecha6;
                global.SpriteFlecha[7] = sFlecha7;

                global.Velocidad = 4;
                global.VelocidadDisparo = 5;
                global.Salud = 100;
                global.Hambre = 100;
                global.Magia = 75;
                indice = 9; // Donde inicia su Sprite
            break;
            case VALQUIRIA:
                global.SpriteHeroe[0] = sValquiriaE;
                global.SpriteHeroe[1] = sValquiriaNE;
                global.SpriteHeroe[2] = sValquiriaN;
                global.SpriteHeroe[3] = sValquiriaNW;
                global.SpriteHeroe[4] = sValquiriaW;
                global.SpriteHeroe[5] = sValquiriaSW;
                global.SpriteHeroe[6] = sValquiriaS;
                global.SpriteHeroe[7] = sValquiriaSE;

                global.SpriteEspada[0] = sEspada0;
                global.SpriteEspada[1] = sEspada1;
                global.SpriteEspada[2] = sEspada2;
                global.SpriteEspada[3] = sEspada3;
                global.SpriteEspada[4] = sEspada4;
                global.SpriteEspada[5] = sEspada5;
                global.SpriteEspada[6] = sEspada6;
                global.SpriteEspada[7] = sEspada7;

                global.Velocidad = 3.3;
                global.VelocidadDisparo = 4;
                global.Salud = 100;
                global.Hambre = 100;
                global.Magia = 50;
                indice = 17; // Donde inicia su Spritex
            break;
            case WIZARD:
                global.SpriteHeroe[0] = sWizardE;
                global.SpriteHeroe[1] = sWizardNE;
                global.SpriteHeroe[2] = sWizardN;
                global.SpriteHeroe[3] = sWizardNW;
                global.SpriteHeroe[4] = sWizardW;
                global.SpriteHeroe[5] = sWizardSW;
                global.SpriteHeroe[6] = sWizardS;
                global.SpriteHeroe[7] = sWizardSE;

                global.SpriteFuego[0] = sFuego0;
                global.SpriteFuego[1] = sFuego1;
                global.SpriteFuego[2] = sFuego2;
                global.SpriteFuego[3] = sFuego3;
                global.SpriteFuego[4] = sFuego4;
                global.SpriteFuego[5] = sFuego5;
                global.SpriteFuego[6] = sFuego6;
                global.SpriteFuego[7] = sFuego7;

                global.Velocidad = 2.5;
                global.VelocidadDisparo = 4;
                global.Salud = 100;
                global.Hambre = 100;
                global.Magia = 100;
                indice = 25; // Donde inicia su Sprite
            break;
    }

// A partir de este resultado se encuentran las armas
    global.NumeroSprites = 4*8;

// Direccion que tiene el Heroe por defecto
    global.Direccion = 1; // Sur


// Creamos al jugador en la direccion
    var inst;
    inst = instance_create(128, 96, oPlayer);

    with (inst) {
        speed = 0;
        direction = global.Direccion;
        sprite_index = indice;
    }

    // Alineamos el heroe al grid
    with (oPlayer)  {
        if !place_snapped(32, 32) {
            move_snap(32, 32);
      }
   }
