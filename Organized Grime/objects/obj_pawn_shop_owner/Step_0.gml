if (room != rm_pawn_shop) {
    image_alpha = 0;
    instance_destroy(obj_dialog_pawn_shop);
    instance_destroy(obj_dialog_button_1_shop);
    instance_destroy(obj_dialog_button_2_shop);
}

if (watch_sold == true || ring_sold == true) {
    if (keyboard_check_released(ord("2")) || keyboard_check_released(ord("1"))) {
        instance_destroy(obj_dialog_pawn_shop);
        room_goto(rm_percentage_testing);
    }
}

else if ((ring_raise || ring_drop) == true && (keyboard_check_released(ord("1")) || keyboard_check_released(ord("2")))) {
    ring_sold = true;
    instance_create_depth(0,0,0, obj_dialog_pawn_shop);
}

else if ((watch_raise || watch_drop) == true && (keyboard_check_released(ord("1")) || keyboard_check_released(ord("2")))) {
    watch_sold = true;
    instance_create_depth(0,0,0, obj_dialog_pawn_shop);
}

else if (ring_negotiate == true && keyboard_check_released(ord("2"))) {
    ring_drop = true;
    instance_create_depth(0,0,0, obj_dialog_pawn_shop);
}

else if (ring_negotiate == true && keyboard_check_released(ord("1"))) {
    ring_raise = true;
    instance_create_depth(0,0,0, obj_dialog_pawn_shop);
}

else if (watch_negotiate == true && keyboard_check_released(ord("1"))) {
    watch_raise = true;
    instance_create_depth(0,0,0, obj_dialog_pawn_shop);
}

else if (watch_negotiate == true && keyboard_check_released(ord("2"))) {
    watch_drop = true;
    instance_create_depth(0,0,0, obj_dialog_pawn_shop);
}

else if (sell_watch == true && keyboard_check_released(ord("2"))) {
    watch_negotiate = true;
    instance_create_depth(0,0,0, obj_dialog_pawn_shop);
}

else if (sell_ring == true && keyboard_check_released(ord("2"))) {
    ring_negotiate = true;
    instance_create_depth(0,0,0, obj_dialog_pawn_shop);
}

else if (sell_watch == true && keyboard_check_released(ord("1"))) {
    watch_sold = true;
    instance_create_depth(0,0,0, obj_dialog_pawn_shop);
}

else if (sell_ring == true && keyboard_check_released(ord("1"))) {
    ring_sold = true;
    instance_create_depth(0,0,0, obj_dialog_pawn_shop);
}

else if (sell == true && keyboard_check_released(ord("1"))) {
    sell_ring = true;
    instance_create_depth(0,0,0, obj_dialog_pawn_shop);
}

else if (sell == true && keyboard_check_released(ord("2"))) { 
    sell_watch = true; 
    instance_create_depth(0,0,0, obj_dialog_pawn_shop);
}
else if (leave == false && keyboard_check(ord("2"))) {
    intro_done = true;
    leave = true;
} 

else if (sell == false && keyboard_check_released(ord("1"))) {
    sell = true;
    intro_done = true;
    instance_create_depth(0, 0, 0, obj_dialog_pawn_shop);
}

else if (sell == false && keyboard_check_released(ord("1"))) {
    sell = true;
    intro_done = true;
    instance_create_depth(0, 0, 0, obj_dialog_pawn_shop);
}

else if (sell == false && keyboard_check_released(ord("2"))) {
    room_goto(rm_percentage_testing);
}


