if (mouse_check_button(mb_left)) {
    sprite_index = spr_button_pressed7;
    this.pressed = true;
    instance_create_depth(0, 0, 0, obj_button7_pressed);
}

else {
    sprite_index = spr_button7;
}