image_alpha = 1;

sprite_index = spr_cleaing_van_moving_right;

obj_player.night_time = true;

black.image_alpha -= 0.05;

if (x < 128) {
    x += 1;
}

if (x == 128) {
    sprite_index = spr_cleaing_van_right;
    alarm[2] = 60;
    obj_player.image_alpha = 1;
	obj_shadow.image_alpha = 1;
    alarm[2] = -1;
}

alarm[2] = 1;