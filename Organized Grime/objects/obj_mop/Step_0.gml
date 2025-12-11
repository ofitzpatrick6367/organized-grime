if (mouse_check_button(mb_left) == false)
{
    this.can_move = false;
}

if (this.can_move == true)
{
    this.x = mouse_x;
    this.y = mouse_y;
}

if (this.can_move == false) 
{
    if (this.y < 120)
        this.y = this.y + 3;
    
}
