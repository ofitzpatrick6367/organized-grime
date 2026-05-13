// Inherit the parent event
event_inherited();

dialog = new Dialogue();

if (obj_pawn_shop_owner.intro_done == false) {
    text = "(1)   Sell Something";
}

if (obj_pawn_shop_owner.sell == true) {
    text = "(1)   Ring";
}


choice_button = 1;

showing_button = true;