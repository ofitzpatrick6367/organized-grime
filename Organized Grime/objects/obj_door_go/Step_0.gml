if (obj_player.house_1_clean == true and obj_glove.got_key == true and distance_to_object(obj_player) < 8 and keyboard_check(ord("E"))) {
    room_goto(level_one_yard);
}