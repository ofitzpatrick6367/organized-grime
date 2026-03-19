if (keyboard_check(vk_right)) {
    if (sprite_index == millers_2) {
        sprite_index = mccarthy_3;
    }
    else if (sprite_index == smiths_1) {
        sprite_index = millers_2;
    }
}

else if (keyboard_check(vk_left)) {
    if (sprite_index == millers_2) {
        sprite_index = smiths_1;
    }
    else if (sprite_index == mccarthy_3) {
        sprite_index = mccarthy_3;
    }
    
}