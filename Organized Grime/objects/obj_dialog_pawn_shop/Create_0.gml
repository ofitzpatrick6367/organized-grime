event_inherited();

sell_ring = false;

if (obj_pawn_shop_owner.intro_done == false) {
    dialog.add(spr_pawn_shop_dialogue, "...You didn't see that, did you? I mean, uh, what can I help you with?");
}

if (obj_pawn_shop_owner.intro_done == true && obj_pawn_shop_owner.sell == true) {
    dialog.pop();
    dialog.add(spr_pawn_shop_dialogue, "Alright, what do you want to sell?");
}

if (obj_pawn_shop_owner.sell_ring == true) {
    dialog.pop();
    dialog.add(spr_pawn_shop_dialogue, "A ring, huh... looks pretty decent. I'll give you $150 for it.");
}
if (obj_pawn_shop_owner.sell_watch == true) {
    dialog.pop();
    dialog.add(spr_pawn_shop_dialogue, "A watch, huh... I'll give you $75 for it.");
}