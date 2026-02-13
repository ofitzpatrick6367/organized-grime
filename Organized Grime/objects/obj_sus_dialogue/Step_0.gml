if (showing_dialog == false) {
    if (dialog.count() <= 0) {
        instance_destroy();
        return;
    }
    
    current_dialog = dialog.pop();
    showing_dialog = true;
}

else {
    instance_create_depth(0, 0, layer_get_depth("Instances"), obj_sus_button);
    instance_create_depth(0, 0, layer_get_depth("Instances"), obj_not_sus_button);
    if (keyboard_check_released(key_next)) {
        showing_dialog = false;
        alpha = 0;
    }
}