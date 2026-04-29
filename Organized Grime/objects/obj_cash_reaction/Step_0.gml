this.x = player.x + 8;
this.y = player.y - 17;

if (instance_exists(obj_desk_with_check) && obj_desk_with_check.sprite_index == spr_office_desk_without_check){
	image_alpha = 1;
	
	if (flag == false){
		audio_play_sound(snd_got_check, 0, false)
		flag = true;
	}
	
	if(this.sprite_index == spr_cash_reaction){
		switch_anim++;
		
		if(switch_anim >= 20){
			image_alpha = 0;
		}
	}
}
