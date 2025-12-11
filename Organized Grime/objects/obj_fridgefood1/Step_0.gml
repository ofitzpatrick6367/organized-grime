if (mouse_check_button(mb_left) == false)
{
    this.can_move = false;
}

if (this.can_move == true)
{
    this.x = mouse_x-16;
    this.y = mouse_y-16;
}

if (this.can_move == false) 
{
    if (this.y < 96)
        this.y = this.y + 3;
	
	if (this.y > 100)
        this.y = 85;
	

	if (this.x < 259)
        this.x = 272;	
}