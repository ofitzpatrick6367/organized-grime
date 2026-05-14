// Inherit the parent event
event_inherited();

dialog = new Dialogue();

owner = obj_pawn_shop_owner;

if (owner.watch_sold) {
    text = "(1)   More";
}

else if (owner.ring_sold) {
    text = "(1)   More";
}

else if (owner.ring_raise == true) {
    text = "(1)   Sell"
}

else if (owner.ring_negotiate == true) {
    text = "(1)   $175 at least, it's very high quality."
}

else if (owner.sell_watch == true) {
    text = "(1)   Sounds good";
}

else if (owner.sell_ring == true) {
    text = "(1)   Sounds good";
}

else if (owner.sell == true) {
    text = "(1)   Sell ring";
}

else if (owner.intro_done == false) {
    text = "(1)   Sell Something";
}

choice_button = 1;

showing_button = true;