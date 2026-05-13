if (sell == false && keyboard_check(ord("1"))) {
    sell = true;
    intro_done = true;
    instance_create_depth(0, 0, 0, obj_dialog_pawn_shop);
}

if (sell == true && keyboard_check(ord("1"))) {
    sell_ring = true;
    instance_create_depth(0,0,0, obj_dialog_pawn_shop);
}

if (sell == true && keyboard_check(ord("2"))) {
    sell_watch = true;
    instance_create_depth(0,0,0, obj_dialog_pawn_shop);
}
if (leave == false && keyboard_check(ord("2"))) {
    intro_done = true;
    leave = true;
}

