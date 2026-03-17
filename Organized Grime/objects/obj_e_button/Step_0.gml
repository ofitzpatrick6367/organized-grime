this.x = player.x + 8;
this.y = player.y - 17;

if(instance_exists(interactible_obj) && distance_to_object(interactible_obj) < 10){

	
	show_debug_message(distance_to_object(interactible_obj));
	depth = -1000;
	this.sprite_index = spr_e_spawn;
	this.image_alpha = 1;
	
	if (this.sprite_index == spr_e_spawn){
		switch_anim++;
	}
	
	if (switch_anim >= 10){
		this.sprite_index = spr_e_loop;
	}

	
}

else{
	this.image_alpha = 0;
	switch_anim = 0;
}

