if (instance_exists(obj_dialog_pregame)) {
    sprite_index = spr_one_husband_idle_left;
}

if (!instance_exists(obj_dialog_pregame) and out_room == false) {
    sprite_index = spr_one_husband_walk_right;
    this.x += 1.5;
    
    if (this.x >= 400) {
        out_room = true;
    }
}

if (out_room == true) {
    this.x = 512;
    this.y = 256;
    sprite_index = spr_one_husband_idle_up;
}

if (obj_player.end_cutscene == true) {
    out_room = false;
    husband_npc.x = 304;
    husband_npc.y = 352;
    husband_npc.sprite_index = spr_one_husband_idle_left;
}