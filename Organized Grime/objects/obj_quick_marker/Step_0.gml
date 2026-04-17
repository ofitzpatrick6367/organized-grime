if (keyboard_check_pressed(ord("E"))) {
    pressed = 1;
    alarm[1] = 1;
}

if (keyboard_check_released(ord("E"))) {
    released = 1;
    alarm[1] = 1;
}

if (image_angle < -350) {
    image_angle = 0;
}

if (image_angle >= -270 and image_angle <= -180) {
    if (pressed == 1 or released == 1) {
        success = true;
        obj_player.robbery_success = true;
        instance_destroy();
        instance_destroy(obj_quick_ring);
    }
}

else {
    if (pressed ==1 or released == 1) {
        show_debug_message("FAILURE!!! you die now");
        obj_player.robbery_fail = true;
    }
}