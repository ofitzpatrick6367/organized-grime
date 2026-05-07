if(level_end == true){
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

else{
	sprite_index = spr_blue_0;
}