{
    /// Definir valores segun el tipo de heroe
    image_index = 0;
    // animation speed
    image_speed = 0.15;
    // Cada segundo se controla un evento
    alarm[0]=60;
    
    // Experiencia
        Experience = 0; // Incrementa segun se va avanzando
    // Stats Base, sin items    
        Armor = 0;      // Armadura base, crece segun la experiencia va subiendo
        Speed = 0;      // Velocidad de movimiento, solo incrementa con items
        Shot = 0;       // Daño por disparo, solo incrementa con items
        Magic = 0;      // Daño por magia, solo incrementa con items
        ShotSpeed = 0;  // Velocidad de disparo, solo incrementa con items
        Agilidad = 0;   // Agilidad base, crece segun la experiencia, > Agilidad probilidad de < daño
            
        Critico = 0;    // ?? Probabilidad de hace Nx de daño
        Suerte = 0;     // > suerte mejores items,  incrementa con items
        
    // Define stats extra
       extraArmor = 0;
       extraSpeed = 0;
       extraShot = 0;
       extraMagic = 0;
       extraShotSpeed = 0;
       extraAgilidad = 0;
    
    
    switch (global.HeroeElegido) {
        case THOR:
            Shot = 0;
            Armor = 0;
            Speed = 0;
            ShotSpeed = 0;
            Agilidad = 0;
            Magic = 0;
            
            Critico = 0;
            Suerte = 0;
        break;
        case ELF:
    
        break;
        case VALQUIRIA:
    
        break;
        case WIZARD:
    
        break;
    }
}

