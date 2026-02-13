x = camera_get_view_x(view_camera[0]);
y = camera_get_view_y(view_camera[0]) + 60;

if (sprite_index == spr_sus_meter_0) {
    sus_level = 0;
}

else if (sprite_index == spr_sus_meter_25) {
    sus_level = 25;
}

else if (sprite_index == spr_sus_meter_50) {
    sus_level = 50;
}

else if (sprite_index == spr_sus_meter_75) {
    sus_level = 75;
}
else if (sprite_index == spr_sus_meter_99) {
    sus_level = 99;
}

else if (sprite_index == spr_sus_meter_100) {
    sus_level = 100;
}