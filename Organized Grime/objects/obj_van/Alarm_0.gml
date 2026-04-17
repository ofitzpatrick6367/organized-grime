x -= 2;
alarm[0] = 1;
sprite_index = spr_cleaing_van_moving;
obj_smoke.image_alpha = 1;
obj_smoke.sprite_index = spr_smoke_left;

if (x < -128) {
    alarm[0] = -1;
}