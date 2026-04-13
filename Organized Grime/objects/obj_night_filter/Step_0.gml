x = camera_get_view_x(view_camera[0]);
y = camera_get_view_y(view_camera[0]);

show_debug_message(obj_player.night_time);

if (obj_player.night_time == true or room == Room1_night) {
    image_alpha = 0.5;
}

else {
    image_alpha = 0;
}