if (image_alpha == 1){
		
	if(end_anim > 0){
		end_anim--;
		show_debug_message(end_anim);
	}
	
	else if (end_anim == 0){
		sprite_index = spr_nothing;
	}
}