if (room == rm_fridge_open and obj_fridge_closed.image_alpha == 1) {
    sprite_index = ten;
    instance_destroy();
}
else if (room == rm_cleaning and obj_minigame_win.image_alpha == 1) {
    sprite_index = ten;
    instance_destroy();
}