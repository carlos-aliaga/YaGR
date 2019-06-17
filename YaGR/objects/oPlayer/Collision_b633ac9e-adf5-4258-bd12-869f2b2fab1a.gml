

switch(other.TipoComida){
    case 0:
    case 3:
    case 4:
    case 5:
        global.Salud += 100;
    break;
    case 1:
        global.Salud -= 100;
    break;
    case 2:
        randomize();
        r = choose(0,1);
        if(r=0){
            global.Salud += 100;
        }
        else{
            global.Salud -= 100;
        }
    break;
}

with(other){
    instance_destroy();
}

