if (instance_exists(obj_dialog_pregame)) {
    sprite_index = spr_one_wife_idle_left;
}

if (!instance_exists(obj_dialog_pregame) and out_room == false) {
    sprite_index = spr_one_wife_walk_right;
    this.x += 1.5;
    
    if (this.x >= 400) {
        out_room = true;
    }
}

if (out_room == true) {
    this.x = 400;
    this.y = 240;
    sprite_index = spr_one_wife_idle_down;
}