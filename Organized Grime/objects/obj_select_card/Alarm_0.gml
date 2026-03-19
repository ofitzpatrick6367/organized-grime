/* if (keyboard_check(vk_right)) {
    if (sprite_index == millers_2) {
        sprite_index = mccarthy_3;
    }
    else if (sprite_index == smiths_1) {
        sprite_index = millers_2;
    }
}

else if (keyboard_check(vk_left)) {
    if (sprite_index == mccarthy_3) {
        sprite_index = millers_2;
    }
    else if (sprite_index == millers_2) {
        sprite_index = smiths_1;
    }
    
}

 if (sprite_index == smiths_1) {
    if (keyboard_check(vk_right)) {
        sprite_index = millers_2;
        alarm[0] = 2;
    }
}

else if (sprite_index == millers_2) {
    if (keyboard_check(vk_right)) {
        sprite_index = mccarthy_3;
        alarm[0] = 2;
    }
    if (keyboard_check(vk_left)) {
        sprite_index = smiths_1;
        alarm[0] = 2;
    }
}

else if (sprite_index == mccarthy_3) {
    if (keyboard_check(vk_left)) {
        sprite_index = millers_2;
        alarm[0] = 2;
    }
}