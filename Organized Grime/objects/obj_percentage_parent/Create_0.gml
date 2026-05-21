final_score = 0;

if (instance_exists(obj_pawn_shop_owner)){
	pawn_shop_owner = obj_pawn_shop_owner;
	show_debug_message("WORKS")
}

if (pawn_shop_owner.money == 0) {
    final_score = 70;
}

else if (pawn_shop_owner.money == 70) {
    final_score = 75;
}

else if (pawn_shop_owner.money == 125) {
    final_score = 86;
}

else if (pawn_shop_owner.money == 150) {
    final_score = 90;
}

else if (pawn_shop_owner.money == 175) {
    final_score = 95;
}
else if (pawn_shop_owner.money == 300) {
    final_score = 100;
}
    
parent = obj_percentage_parent;

level_end = false;
countdown = 0;

number[0] = spr_green_0;
number[1] = spr_green_1;
number[2] = spr_green_2;
number[3] = spr_green_3;
number[4] = spr_green_4;
number[5] = spr_green_5;
number[6] = spr_green_6;
number[7] = spr_green_7;
number[8] = spr_green_8;
number[9] = spr_green_9;
