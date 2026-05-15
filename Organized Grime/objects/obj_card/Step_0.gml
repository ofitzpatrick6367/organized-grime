//fix this

sprite_index = card[house_num];


if (keyboard_check_released(vk_right) and house_num < 2) {
        house_num++;
}

else if (keyboard_check_released(vk_left) and house_num > 0) {
        house_num--;
}

/* 
if (sprite_index == millers_2) {
    if (keyboard_check(vk_right)) {
        sprite_index = mccarthy_3;
        exit;
    }
    
    if (keyboard_check(vk_left)) {
        sprite_index = smiths_1;
        exit;
    }
}

else if (sprite_index == smiths_1) {
    if (keyboard_check(vk_right)) {
        sprite_index = millers_2;
        exit;
    }
}

else if (sprite_index == mccarthy_3) {
    if (keyboard_check(vk_left)) {
        sprite_index = millers_2;
        exit;
    }
}

 * 
 * 
/* if (keyboard_check(vk_right)) {
    if (sprite_index == millers_2) {
        sprite_index = mccarthy_3;
    }
    if (sprite_index == smiths_1) {
        sprite_index = millers_2;
    }
}

else if (keyboard_check(vk_left)) {
    if (sprite_index == mccarthy_3) {
        sprite_index = millers_2;
    }
    
    if (sprite_index == millers_2) {
        sprite_index = smiths_1;
    }
    
} 