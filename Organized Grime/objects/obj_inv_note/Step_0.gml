x = (camera_get_view_x(view_camera[0]) + 152) - 48;
y = camera_get_view_y(view_camera[0]) + 152;

if (obj_glove.got_note == true) {
    sprite_index = spr_not_selected;
    
    if (!instance_exists(obj_dialogue_button1_parent)) {
        selected = false;
    }
    
    else if (keyboard_check(ord(select_key))) {
        selected = true
    }
    
    if (keyboard_check(ord(4)) or keyboard_check(ord(2)) or (keyboard_check(ord(3)))) {
        selected = false;
    }
}

if (selected == true) {
    sprite_index = spr_selected;
}