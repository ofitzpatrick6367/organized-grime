x = camera_get_view_x(view_camera[0]-5);
y = camera_get_view_y(view_camera[0]-5);

if (obj_player.night_time == true or room == Room1_night) {
    image_alpha = 0.75;
}

else {
    image_alpha = 0;
}