
var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));

move_and_collide(_hor * move_speed, _ver * move_speed, [tilemap, mess, npc, safe, fridge, stair, dogbed], undefined, undefined, undefined, move_speed, move_speed);

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

else if (instance_exists(obj_dialog_starter) && distance_to_object(obj_dialog_starter) < 8 && keyboard_check(ord("E")))
    instance_create_depth(0, 0, 0, obj_dialog_sample_a)