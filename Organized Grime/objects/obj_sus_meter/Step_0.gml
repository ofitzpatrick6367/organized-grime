x = camera_get_view_x(view_camera[0]);
y = camera_get_view_y(view_camera[0]) + 60;

if (sprite_index == spr_sus_meter_0) {
    sus_level = 0;
    obj_glove.sus_score = 0;
}

else if (sprite_index == spr_sus_meter_25) {
    sus_level = 25;
    obj_glove.sus_score = 1;
}

else if (sprite_index == spr_sus_meter_50) {
    sus_level = 50;
    obj_glove.sus_score = 2;
}

else if (sprite_index == spr_sus_meter_75) {
    sus_level = 75;
    obj_glove.sus_score = 3;
}
else if (sprite_index == spr_sus_meter_99) {
    sus_level = 99;
    obj_glove.sus_score = 4;
}

else if (sprite_index == spr_sus_meter_100) {
    sus_level = 100;
    obj_glove.sus_score = 5;
}