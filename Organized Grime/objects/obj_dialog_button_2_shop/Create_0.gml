// Inherit the parent event
event_inherited();

dialog = new Dialogue();

owner = obj_pawn_shop_owner;

if (owner.watch_sold) {
    text = "(2)   Leave";
}

else if (owner.ring_sold) {
    text = "(2)   Leave";
}

else if (owner.ring_raise == true) {
    text = "(2)   Sell";
}

else if (owner.ring_negotiate == true) {
    text = "(2)   As much as you're willing to give me man";
}

else if (owner.sell_watch == true) {
    text = "(2)   Negotiate";
}

else if (owner.sell_ring == true) {
    text = "(2)   Negotiate";
}

else if (owner.sell == true) {
    text = "(2)   Sell watch";
}

else if (owner.intro_done == false) {
    text = "(2)   Leave";
}

choice_button = 2;

showing_button = true;