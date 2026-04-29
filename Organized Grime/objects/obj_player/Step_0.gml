if (night_time == false) {
    idle_down = spr_player_idle_down;
    idle_left = spr_player_idle_left;
    idle_right = spr_player_idle_right;
    idle_up = spr_player_idle_up;
    walk_down = spr_player_walk_down;
    walk_left = spr_player_walk_left;
    walk_right = spr_player_walk_right;
    walk_up = spr_player_walk_up;
}

else if (night_time == true) {
    idle_down = spr_robber_idle_down;
    idle_left = spr_robber_idle_left;
    idle_right = spr_robber_idle_right;
    idle_up = spr_robber_idle_up;
    walk_down = spr_robber_walk_down;
    walk_left = spr_robber_walk_left;
    walk_right = spr_robber_walk_right;
    walk_up = spr_robber_walk_up;
}

house_1_kitchen_clean = obj_glove.house_1_kitchen_clean;
house_1_fridge_clean = obj_glove.house_1_fridge_clean;
end_cutscene = obj_glove.end_cutscene;


if (instance_exists(obj_dialogue_parent) and night_time == false) {
    can_move = false;
    if (sprite_index == walk_right) sprite_index = idle_right;  
    else if (sprite_index == walk_left) sprite_index = idle_left;
    else if (sprite_index == walk_down) sprite_index = idle_down;
    else if (sprite_index == walk_up) sprite_index = idle_up;
}

else {
    can_move = true;
}

if (can_move == true) {
    var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
    var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));

move_and_collide(_hor * move_speed, _ver * move_speed, [tilemap, mess, npc, safe, fridge, stair, dogbed, level_one_npc, level_one_npc_2, desk, swivel_chair, bush, fence, safe_steal], undefined, undefined, undefined, move_speed, move_speed);


        if (_hor != 0 or _ver != 0)
        {
            if (_ver > 0) sprite_index = walk_down; 
            else if (_ver < 0) sprite_index = walk_up;
            else if (_hor > 0) sprite_index = walk_right;
            else if (_hor < 0) sprite_index = walk_left;
            
        }
    
         else
        {
            if (sprite_index == walk_right) sprite_index = idle_right;
            else if (sprite_index == walk_left) sprite_index = idle_left;
            else if (sprite_index == walk_down) sprite_index = idle_down;
            else if (sprite_index == walk_up) sprite_index = idle_up;
        }
    }


if (instance_exists(obj_mess) && distance_to_object(obj_mess) < 8 && keyboard_check_pressed(ord("E")) and house_1_kitchen_clean == false)
{
    if (instance_exists(obj_room_switcher)) exit;

    var _switcher = instance_create_depth(0, 0, 0, obj_room_switcher);

    _switcher.player_data = self;
    _switcher.original_room = room;

    room_goto(rm_cleaning); 
	audio_stop_sound(snd__house_1_theme);
	audio_play_sound(snd_minigame, 0, true, 0.5);
}

else if (night_time == false and instance_exists(obj_safe) && distance_to_object(obj_safe) < 8 && keyboard_check_pressed(ord("E")))
{
    if (instance_exists(obj_room_switcher)) exit;

    var _switcher = instance_create_depth(0, 0, 0, obj_room_switcher);

    _switcher.player_data = self;
    _switcher.original_room = room;

    room_goto(rm_safe);
}

else if (night_time == false and instance_exists(obj_china_shelf) and distance_to_object(obj_china_shelf) < 8 and keyboard_check_pressed(ord("E)"))) {
    if (instance_exists(obj_room_switcher)) exit;

    var _switcher = instance_create_depth(0, 0, 0, obj_room_switcher);

    _switcher.player_data = self;
    _switcher.original_room = room;

    room_goto(rm_china_shelf);
}

else if (instance_exists(obj_fridge) && distance_to_object(obj_fridge) < 8 && keyboard_check_pressed(ord("E")) and house_1_fridge_clean == false)
{
    if (instance_exists(obj_room_switcher)) exit;

    var _switcher = instance_create_depth(0, 0, 0, obj_room_switcher);

    _switcher.player_data = self;
    _switcher.original_room = room;

    room_goto(rm_fridge_open);
	audio_stop_sound(snd__house_1_theme);
	audio_play_sound(snd_minigame, 0, true, 0.5);
}


else if (instance_exists(obj_desk_with_check) && distance_to_object(obj_desk_with_check) < 8 && keyboard_check_pressed(ord("E")))
{
    obj_desk_with_check.sprite_index = spr_office_desk_without_check;
}


//checks

if (room == rm_floor2) {
    house_1_clean = true;
}

if (house_1_fridge_clean == true and house_1_kitchen_clean == true) {
    house_1_clean = true;
}

if (keyboard_check(ord("N"))) {
    night_time = true;
}

if (keyboard_check(ord("M"))) {
    night_time = false;
}

if (keyboard_check(ord("C"))) {
    house_1_clean = true;
}

if (night_time == true) {
    house_1_clean = true;
}


//dialogue 

if (first_dialog == false and !instance_exists(obj_dialogue_parent) and room == Room1 and night_time == false) {
    instance_create_depth(0, 0, 0, obj_dialog_pregame);
    first_dialog = true;
}
if (second_dialog == false and !instance_exists(obj_dialogue_parent) and room == rm_floor2) {
    instance_create_depth(0, 0, 0, obj_dialogue_informant);
    second_dialog = true;
}

if (safe_dialog == false and !instance_exists(obj_dialogue_parent) and room == rm_safe) {
    instance_create_depth(0, 0, 0, obj_dialogue_informant);
    safe_dialog = true;
}

if (instance_exists(obj_mess) && distance_to_object(obj_mess) < 8 && keyboard_check_pressed(ord("E")) and house_1_kitchen_clean == true) {
    instance_create_depth(0, 0, layer_get_depth("Instances"), obj_dialog_already_clean);
    sprite_index = spr_player_idle_down;
    player.y += 8;
}

if (instance_exists(obj_fridge) && distance_to_object(obj_fridge) < 8 && keyboard_check_pressed(ord("E")) and house_1_fridge_clean == true) {
    instance_create_depth(0, 0, layer_get_depth("Instances"), obj_dialog_already_clean);
    sprite_index = spr_player_idle_down;
    player.y += 8;
}

if (open_safe_dialog = false and obj_glove.safe_open == true and !instance_exists(obj_dialogue_parent) and room == rm_floor2) {
    instance_create_depth(0, 0, 0, obj_dialogue_informant);
    open_safe_dialog = true;
}

if (instance_exists(obj_dog_bed) and distance_to_object(obj_dog_bed) < 8 and keyboard_check_pressed(ord("E")) and dogbed_dialog == false) {
    instance_create_depth(0, 0, layer_get_depth("Instances"), obj_dialogue_dogbed);
    dogbed_dialog = true;
}

if (room == Room1 and house_1_fridge_clean == true and !instance_exists(obj_dialogue_parent) and fridge_dialog == false) {
    player.y += 16;
    instance_create_depth(0, 0, 0, obj_dialogue_informant);
    fridge_dialog = true;
}

if (room == Room1 and end_cutscene == false and obj_glove.got_key == true and !instance_exists(obj_dialogue_parent)) {
    player.x = 192;
    player.y = 336;
    player.sprite_index = spr_player_idle_right;
    
    wife_npc.x = 304;
    wife_npc.y = 320;
    wife_npc.sprite_index = spr_one_wife_idle_left;
    
    instance_create_depth(0, 0, 0, obj_dialog_end);
    obj_glove.end_cutscene = true;
    end_cutscene = true;
}

if (room == level_one_yard and yard_dialog == false and !instance_exists(obj_dialogue_parent)) {
    instance_create_depth(0, 0, 0, obj_dialogue_informant);
    yard_dialog = true;
    house_1_clean = true;
}



if (room == Room1 and house_1_clean == false and player.y < 207 and !instance_exists(obj_dialogue_parent))
{
    player.y += 1;
    instance_create_depth(0, 0, 0, obj_dialog_sample_a);
    
    times_up_stairs += 1;
    
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

if (instance_exists(husband_npc) && distance_to_object(husband_npc) < 8 && keyboard_check_pressed(ord("E"))) {
    instance_create_depth(0, 0, layer_get_depth("Instances"), obj_sus_dialogue);
}

if (instance_exists(wife_npc) && distance_to_object(wife_npc) < 8 && keyboard_check_pressed(ord("E"))) {
    instance_create_depth(0, 0, layer_get_depth("Instances"), obj_sus_dialogue_2);
}


//night time

// if in yard and its nightime go into the house but dont have the pregame cutscene activiate



// go up to the second floor and look in the safe, use sprite of player rummaging in safe

if (night_time == true){
	
	obj_glove.night_time = true;

}

if (room == rm_floor2_night and instance_exists(obj_safe_robbery) and distance_to_object(obj_safe_robbery) < 8 and keyboard_check_pressed(ord("E")) and night_time == true and house_1_clean == true){
    instance_destroy(obj_dialogue_parent);
	
    can_move = false;
	
    player.x = 392;
   	player.y = 96; 
    
   	sprite_index = spr_robber_walk_up;
   	in_anim = true;
	
   	if (in_anim == true){
   		player.y -= 0.5;
   	}
	
   	if (player.y == 81){
   		in_anim = false;
   	} 
    
   	sprite_index = spr_robber_rummaging_up;
	
   	if (sprite_index == spr_robber_rummaging_up){
   		switch_anim++;
   	}
	
   	if (switch_anim >= 18){
   		this.sprite_index = spr_player_idle_up;
   		can_move = true;
   	}
       
       if (sprite_index == spr_robber_rummaging_up) {
           alarm[0] = 120;
    } 
    
}

if (rummaging == false) {
    instance_destroy(obj_quick_marker);
    instance_destroy(obj_quick_ring);
}

if (instance_exists(obj_quick_marker)) {
    if (obj_quick_marker.failure == true) {
        robbery_fail = true;
    }
}

if (robbery_fail == true) {
    instance_destroy(obj_quick_marker);
    instance_destroy(obj_quick_ring);
    
    sprite_index = spr_robber_idle_up;
    obj_e_button.image_alpha = 0;
    
    alarm[2] = 30;
}

if (robbery_success == true) {
    show_debug_message("heck yeah my guy");
}

else if (robbery_fail == true) {
    show_debug_message("heck no my guy");
}

if (room == level_one_yard) {
    if (robbery_success == true) {
        instance_create_depth(0, 0, 0, obj_dialogue_informant);
    }
}

if (room == rm_pawn_shop) {
    can_move = false;
}

// leave house and get back in van, van drives off screen

// if theres time maybe add dialogue where the informant tells you what to do but this isnt necessary