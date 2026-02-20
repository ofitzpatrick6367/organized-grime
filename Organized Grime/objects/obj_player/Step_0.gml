house_1_kitchen_clean = obj_glove.house_1_kitchen_clean;
house_1_fridge_clean = obj_glove.house_1_fridge_clean;


if (instance_exists(obj_dialogue_parent)) {
    can_move = false;
    if (sprite_index == spr_player_walk_right) sprite_index = spr_player_idle_right;  
    else if (sprite_index == spr_player_walk_left) sprite_index = spr_player_idle_left;
    else if (sprite_index == spr_player_walk_down) sprite_index = spr_player_idle_down;
    else if (sprite_index == spr_player_walk_up) sprite_index = spr_player_idle_up;
}

else {
    can_move = true;
}

if (can_move == true) {
    var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
    var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));

move_and_collide(_hor * move_speed, _ver * move_speed, [tilemap, mess, npc, safe, fridge, stair, dogbed, level_one_npc, level_one_npc_2, desk, swivel_chair, bush, fence], undefined, undefined, undefined, move_speed, move_speed);


        if (_hor != 0 or _ver != 0)
        {
            if (_ver > 0) sprite_index = spr_player_walk_down; 
            else if (_ver < 0) sprite_index = spr_player_walk_up;
            else if (_hor > 0) sprite_index = spr_player_walk_right;
            else if (_hor < 0) sprite_index = spr_player_walk_left;
            
        }
        else
        {
            if (sprite_index == spr_player_walk_right) sprite_index = spr_player_idle_right;
            else if (sprite_index == spr_player_walk_left) sprite_index = spr_player_idle_left;
            else if (sprite_index == spr_player_walk_down) sprite_index = spr_player_idle_down;
            else if (sprite_index == spr_player_walk_up) sprite_index = spr_player_idle_up;
        }
    }


if (instance_exists(obj_mess) && distance_to_object(obj_mess) < 8 && keyboard_check(ord("E")))
{
    if (instance_exists(obj_room_switcher)) exit;

    var _switcher = instance_create_depth(0, 0, 0, obj_room_switcher);

    _switcher.player_data = self;
    _switcher.original_room = room;

    room_goto(rm_cleaning); 
}

else if (instance_exists(obj_safe) && distance_to_object(obj_safe) < 8 && keyboard_check(ord("E")))
{
    if (instance_exists(obj_room_switcher)) exit;

    var _switcher = instance_create_depth(0, 0, 0, obj_room_switcher);

    _switcher.player_data = self;
    _switcher.original_room = room;

    room_goto(rm_safe);
}

else if (instance_exists(obj_fridge) && distance_to_object(obj_fridge) < 8 && keyboard_check(ord("E")))
{
    if (instance_exists(obj_room_switcher)) exit;

    var _switcher = instance_create_depth(0, 0, 0, obj_room_switcher);

    _switcher.player_data = self;
    _switcher.original_room = room;

    room_goto(rm_fridge_open);
}


else if (instance_exists(obj_desk_with_check) && distance_to_object(obj_desk_with_check) < 8 && keyboard_check(ord("E")))
{
    obj_desk_with_check.sprite_index = spr_office_desk_without_check;
}


//checks

if (house_1_fridge_clean > 0) {
    house_1_clean = true;
}

if (keyboard_check(ord("N"))) {
    night_time = true;
}

if (keyboard_check(ord("M"))) {
    night_time = false;
}


//dialogue 

if (house_1_clean == false and player.y < 207 and !instance_exists(obj_dialogue_parent))
{
    times_up_stairs += 1;
    player.y += 1;
    instance_create_depth(0, 0, 0, obj_dialog_sample_a);
    if (times_up_stairs > 1) {
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
}

if (instance_exists(husband_npc) && distance_to_object(husband_npc) < 8 && keyboard_check(ord("E"))) {
    instance_create_depth(0, 0, layer_get_depth("Instances"), obj_sus_dialogue);
}