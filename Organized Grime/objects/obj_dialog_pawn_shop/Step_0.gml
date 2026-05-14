if (showing_dialog == false) {
    if (dialog.count() <= 0) {
        instance_destroy();
        return;
    }
    
    current_dialog = dialog.pop();
    showing_dialog = true;
}
else {
    instance_create_depth(0, 0, layer_get_depth("Instances"), obj_dialog_button_1_shop);
    instance_create_depth(0, 0, layer_get_depth("Instances"), obj_dialog_button_2_shop);
    if (keyboard_check_released(key_next)) {
        showing_dialog = false;
        alpha = 0;
    }
}