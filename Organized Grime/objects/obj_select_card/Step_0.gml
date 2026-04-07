//fix this

if (keyboard_check(vk_right)) {
    if (house_num < 3) {
        house_num++;
    }
}

else if (keyboard_check(vk_left)) {
    if (house_num > 1) {
        house_num--;
    }
}

if (house_num == 1) {
    sprite_index = smiths_1;
}

else if (house_num == 2) {
    sprite_index = millers_2;
}

else if (house_num == 3) {
    sprite_index = mccarthy_3;
}

/* if (sprite_index == millers_2) {
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