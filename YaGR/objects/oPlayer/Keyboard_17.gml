{  
    if(instance_exists(oArma)){
        return 1;
    }
    else
    {   
        bullet_id = instance_create(x, y, oArma);     
    }    
}

