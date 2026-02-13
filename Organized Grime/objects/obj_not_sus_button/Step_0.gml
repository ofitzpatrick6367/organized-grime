// Inherit the parent event
event_inherited();

if (keyboard_check(ord(choice_button))) {
    if (obj_sus_meter.sprite_index == spr_sus_meter_25) {
        obj_sus_meter.sprite_index = spr_sus_meter_0;
    }
    else if (obj_sus_meter.sprite_index == spr_sus_meter_50) {
        obj_sus_meter.sprite_index = spr_sus_meter_25;
    }
    else if (obj_sus_meter.sprite_index == spr_sus_meter_75) {
        obj_sus_meter.sprite_index = spr_sus_meter_50;
    }
    if (obj_sus_meter.sprite_index == spr_sus_meter_99) {
        obj_sus_meter.sprite_index = spr_sus_meter_75;
    }
}