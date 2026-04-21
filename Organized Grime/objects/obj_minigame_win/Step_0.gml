if (room == rm_cleaning) {
    if (!instance_exists(obj_draggable_parent) and !instance_exists(obj_puddle)) {
        image_alpha = 1;
		audio_stop_sound(snd_minigame);
        obj_glove.house_1_kitchen_clean = true;
		if(flag == true){
			audio_play_sound(snd_minigame_win, 0, false, 0.5);
			flag = false;
		}
    }
}

/* else if (room == rm_fridge_open) {
    if (obj_fridge_closed.image_alpha == 1) {
        image_alpha = 1;
    }
}