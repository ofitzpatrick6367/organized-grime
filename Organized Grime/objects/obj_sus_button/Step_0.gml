// Inherit the parent event
event_inherited();

if (keyboard_check(ord(choice_button))) {
    if (obj_sus_meter.sprite_index == spr_sus_meter_99) {
        obj_sus_meter.sprite_index = spr_sus_meter_100;
    }
    else if (obj_sus_meter.sprite_index == spr_sus_meter_75) {
        obj_sus_meter.sprite_index = spr_sus_meter_99;
    }
    else if (obj_sus_meter.sprite_index == spr_sus_meter_50) {
        obj_sus_meter.sprite_index = spr_sus_meter_75;
    }
    else if (obj_sus_meter.sprite_index == spr_sus_meter_25) {
        obj_sus_meter.sprite_index = spr_sus_meter_50;
    }
    else if (obj_sus_meter.sprite_index == spr_sus_meter_0) {
        obj_sus_meter.sprite_index = spr_sus_meter_25;
    }
}