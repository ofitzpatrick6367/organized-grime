if (mouse_check_button(mb_left)) {
    room_goto(obj_room_switcher.original_room);
	audio_stop_all();
	audio_play_sound(snd__house_1_theme, 0, true, 0.5);
}