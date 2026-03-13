x = (camera_get_view_x(view_camera[0]) + 152) + 16;
y = camera_get_view_y(view_camera[0]) + 152;

if (obj_glove.got_light == true) {
    sprite_index = spr_not_selected;
    
    if (keyboard_check(ord(select_key))) {
        selected = true
    }
    
    if (keyboard_check(ord(4)) or keyboard_check(ord(2)) or (keyboard_check(ord(1)))) {
        selected = false;
    }
}

if (selected == true) {
    sprite_index = spr_selected;
}