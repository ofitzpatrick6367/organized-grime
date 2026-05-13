// Inherit the parent event
event_inherited();

if (obj_pawn_shop_owner.intro_done == false) {
    text = "(2)   Leave";
}

if (obj_pawn_shop_owner.sell == true) {
    text = "(2)   Watch";
}

choice_button = 2;

showing_button = true;