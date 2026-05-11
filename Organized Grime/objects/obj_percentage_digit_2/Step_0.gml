if(level_end == true && final_score != 100){
	sprite_index = spr_blue_count_up;
	final_num = 300;
	image_speed = final_score / 50;
	
	if(countdown < final_num){
		countdown++;
		show_debug_message(countdown);
	}
	
	if (countdown >= final_num){
		sprite_index = number[(final_score mod 10)];
	}
}

else if(level_end == true && final_score == 100){
	sprite_index = spr_blue_count_up;
	final_num = 300;
	image_speed = 99 / 50;
	
	if(countdown < final_num){
		countdown++;
		show_debug_message(countdown);
	}
	
	if (countdown >= final_num){
		sprite_index = spr_nothing;
	}
}

else{
	sprite_index = spr_blue_0;
}