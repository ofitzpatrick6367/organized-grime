if (keyboard_check(select_key)) {
    selected = true;
}

else {
    selected = false;
}

if (selected == false) {
    sprite_index = not_selected;
}

else if (selected == true) {
    sprite_index = select;
}

