if (obj_fridgefood1.x == 80 and obj_fridgefood1.y == 64){
		this.image_alpha = 1;
	}

if (mouse_check_button(mb_left) == false)
{
    this.can_move = false;
	
}

if (this.can_move == true)
{
    this.x = mouse_x-16;
    this.y = mouse_y-16;
	
}

	
// if my y is greater than 20 and less than 30 and
// if my x is between 80 100
// then my x is snap location
// my y is snap location
	

else{
	
	if((this.x > 108 and this.x < 148) and (this.y > -4 and this.y < 34)){	
		this.x = 128;
		this.y = 16;
	}
	
	else{
		this.x = 272;
		this.y = 96;
	}
	
}