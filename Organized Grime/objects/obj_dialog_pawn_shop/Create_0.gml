event_inherited();

sell_ring = false;
intro_done = false;

if (intro_done == false) {
    dialog.add(spr_pawn_shop_dialogue, "...");
    dialog.add(spr_pawn_shop_dialogue, "You didn't see that, did you?");
    dialog.add(spr_pawn_shop_dialogue, "I mean, uh, what can I help you with?");
}
