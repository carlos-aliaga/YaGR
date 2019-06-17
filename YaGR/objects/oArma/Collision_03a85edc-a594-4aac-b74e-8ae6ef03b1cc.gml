with other {
    hp = hp - 30
    if(hp<=0) {
        instance_destroy();
    }
}

action_kill_object();
