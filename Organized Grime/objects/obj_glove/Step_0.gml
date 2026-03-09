this.x = mouse_x - 8;
this.y = mouse_y - 8;

if (room == rm_cleaning and obj_minigame_win.image_alpha == 1) {
    house_1_kitchen_clean = true;
}

if (mouse_check_button(mb_left)) {
    sprite_index = spr_glove_closed;
}
else {
    sprite_index = spr_glove_open;
}

if (room == rm_safe_open){
    safe_open = true;
}

if (room == rm_safe_open and !instance_exists(obj_safe_key)) {
    got_key = true;
}

if (room == Room1 and got_key == true and !instance_exists(obj_dialogue_parent)) {
    end_cutscene = true;
}

