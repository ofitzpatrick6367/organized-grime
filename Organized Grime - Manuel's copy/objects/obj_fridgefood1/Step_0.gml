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
	
	if((this.x > 60 and this.x < 100) and (this.y > 44 and this.y < 84)){	
		this.x = 80;
		this.y = 64
	}
	
	else{
		this.x = 272;
		this.y = 96;
	}
	
}