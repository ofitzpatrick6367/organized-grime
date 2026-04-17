if (room == rm_start) {
    room_goto(rm_title_screen);
}

this.x = mouse_x - 8;
this.y = mouse_y - 8;

if (room == rm_cleaning and obj_minigame_win.image_alpha == 1) {
    house_1_kitchen_clean = true;
	audio_play_sound(snd_minigame_win, 0 , true);
}

if (mouse_check_button(mb_left)) {
    sprite_index = spr_glove_closed;
}
else {
    sprite_index = spr_glove_open;
}

if (room == rm_safe_open){
    safe_open = true;
}

if (room == rm_safe_open and !instance_exists(obj_safe_key)) {
    got_key = true;
} 

/* if (room == Room1 and got_key == true and !instance_exists(obj_dialogue_parent)) {
    end_cutscene = true;
} */


if (keyboard_check(ord("K"))) {
    got_key = true;
}

if (keyboard_check(ord("C"))) {
    got_crowbar = true;
}

if (keyboard_check(ord("L"))) {
    got_light = true;
}

if (house_1_fridge_clean == true or keyboard_check(ord("N"))) {
    got_note = true;
}

if (night_time == true){
	obj_player.night_time = true;
}