if (room == level_one_yard and distance_to_object(obj_player) < 8 and keyboard_check_released(ord("E"))) {
    room_goto(Room1);
}

if (obj_player.house_1_clean == true and obj_glove.got_key == true and distance_to_object(obj_player) < 8 and keyboard_check_released(ord("E"))) {
    room_goto(level_one_yard);

}

if (room == level_one_yard and obj_player.night_time == true and distance_to_object(obj_player) < 8 and keyboard_check_released(ord("E"))){
	room_goto(Room1_night);

}

if (room == Room1_night and distance_to_object(obj_player) < 8 and keyboard_check_released(ord("E"))) {
    room_goto(level_one_yard);
}