this.x = mouse_x - 8;
this.y = mouse_y - 8;

if (mouse_check_button(mb_left)) {
    sprite_index = spr_glove_closed;
}
else {
    sprite_index = spr_glove_open;
}