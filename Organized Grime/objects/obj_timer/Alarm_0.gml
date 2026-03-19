if (sprite_index == zero) {
    if (room == rm_cleaning) {
        obj_minigame_loss.image_alpha = 1;
        obj_mop.image_alpha = 0;
		
		if(instance_exists(obj_draggable_parent)){
			obj_draggable_parent.image_alpha = 0;	
		}
    }
    
    if (room == rm_fridge_open) {
        obj_minigame_loss.image_alpha = 1;
        obj_fridgefood1.image_alpha = 0;
        obj_fridgefood2.image_alpha = 0;
        obj_fridgefood3.image_alpha = 0;
    }
}

if (sprite_index == one) {
    sprite_index = zero;
    alarm[0] = tspeed;
}

else if (sprite_index == two) {
    sprite_index = one;
    alarm[0] = tspeed;
}

else if (sprite_index == three) {
    sprite_index = two;
    alarm[0] = tspeed;
}

else if (sprite_index == four) {
    sprite_index = three;
    alarm[0] = tspeed;
}

else if (sprite_index == five) {
    sprite_index = four;
    alarm[0] = tspeed;
}

else if (sprite_index == six) {
    sprite_index = five;
    alarm[0] = tspeed;
}

else if (sprite_index == seven) {
    sprite_index = six;
    alarm[0] = tspeed;
}

else if (sprite_index == eight) {
    sprite_index = seven;
    alarm[0] = tspeed;
}

else if (sprite_index == nine) {
    sprite_index = eight;
    alarm[0] = tspeed;
}

else if (sprite_index == ten) {
    sprite_index = nine;
    alarm[0] = tspeed;
}

