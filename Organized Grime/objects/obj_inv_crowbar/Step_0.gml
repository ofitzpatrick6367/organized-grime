x = (camera_get_view_x(view_camera[0]) + 152) + 48;
y = camera_get_view_y(view_camera[0]) + 152;

if (obj_glove.got_crowbar == true) {
    sprite_index = spr_not_selected;
    
    if (keyboard_check(ord(select_key))and !instance_exists(obj_dialogue_button2_parent)) {
        selected = true
    }
    
    if (keyboard_check(ord(1)) or keyboard_check(ord(2)) or (keyboard_check(ord(3)))) {
        selected = false;
    }
}

if (selected == true) {
    sprite_index = spr_selected;
}