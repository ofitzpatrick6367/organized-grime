x -= 2;
alarm[0] = 1;
sprite_index = spr_cleaing_van_moving;
obj_smoke_left.image_alpha = 1;

if (x < -128) {
    alarm[0] = -1;
}