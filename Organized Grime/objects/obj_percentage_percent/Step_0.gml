if(level_end == true && final_score != 100){
	final_num = 300;
	
	if(countdown < final_num){
		countdown++;
		show_debug_message(countdown);
	}
	
	if (countdown >= final_num){
		sprite_index = spr_green_percentage;
	}
}


else if(level_end == true && final_score == 100){
	final_num = 300;
	
	if(countdown < final_num){
		countdown++;
		show_debug_message(countdown);
	}
	
	if (countdown >= final_num){
		sprite_index = spr_nothing;
	}
}