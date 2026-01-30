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
    if (this.y < 68)
        this.y = this.y + 3;
	
	if (this.y > 100)
        this.y =85;
		this.x = 272;

	if (this.x < 259)
		this.y = 85;
        this.x = 272;	
}