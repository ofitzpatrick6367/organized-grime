if(level_end == true && final_score != 100){
	sprite_index = spr_blue_count_up;
	final_num = 300;
	image_speed = final_score / 500;
	
	if(countdown < final_num){
		countdown++;
		show_debug_message(countdown);
	}
	
	if (countdown >= final_num){
		sprite_index = number[(final_score div 10)];
		obj_loading_bar.sprite_index = spr_loading_bar_complete;
	}
}

else if(level_end == true && final_score == 100){
	sprite_index = spr_blue_count_up;
	final_num = 300;
	image_speed = 99 / 500;
	
	if(countdown < final_num){
		countdown++;
		show_debug_message(countdown);
	}
	
	if (countdown >= final_num){
		sprite_index = spr_golden_hundred;
		obj_confetti.image_alpha = 1;
		obj_loading_bar.sprite_index = spr_loading_bar_complete;
	}
}

else{
	sprite_index = spr_blue_0;
}