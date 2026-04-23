if (keyboard_check_released(ord("E"))){

	obj_player.can_move = false;
	image_alpha = 1
	this.x = player.x - 200;
	this.y = player. y - 180;
	
}

if(image_alpha == 1 && mouse_check_button(mb_left)){
	
		sprite_index = spr_house_card;
	
	}
	
if (this.sprite_index == spr_house_card){
		switch_anim++;
			
		if (switch_anim >= 29){
			this.sprite_index = spr_house_card_front;
			switch_anim = 0;
				
		}
	}
	
if (switch_anim < 6 && this.sprite_index == spr_house_card_front){
	
	switch_anim ++;
			
	if (switch_anim >= 6){
		spun = true;
	}
}

if (spun == true && mouse_check_button(mb_left)){
	image_alpha = 0;
	finish = true;
	instance_destroy(obj_house_card_1);
}