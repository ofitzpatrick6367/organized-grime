if (obj_fridgefood2.x == 128 and obj_fridgefood2.y == 16){
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
	
	if((this.x > 98 and this.x < 132) and (this.y > -76 and this.y < 116)){	
		this.x = 112;
		this.y = 96;
        obj_fridge_closed.threecorrect = true;
	}
	
	else{
		this.x = 272;
		this.y = 96;
	}
	
}