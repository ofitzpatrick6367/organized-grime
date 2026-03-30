if (distance_to_object(obj_player) < 8 and keyboard_check(ord("E"))) {
    obj_player.image_alpha = 0;
    obj_player.can_move = false;
    alarm[0] = 30;
}

if (x < -128) {
    image_alpha = 0;
    alarm[1] = 1;
}