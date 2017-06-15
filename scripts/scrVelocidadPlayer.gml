/// Velocidad segun el heroe elegido, tomando en cuenta los multiplicadores que tenga
{
    multiplicador = 1;
    switch (global.HeroeElegido) {
            case THOR:
                return multiplicador * global.Velocidad; 
            break;
            case ELF:
                return multiplicador * global.Velocidad;
            break;
            case WIZARD:
                return multiplicador * global.Velocidad;
            break;
            case VALQUIRIA:
                return multiplicador * global.Velocidad;
            break;
    }
}