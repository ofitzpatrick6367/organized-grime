if (keyboard_check(ord(choice_button))) {
    instance_destroy(obj_dialogue_button1_parent);
    instance_destroy(obj_dialogue_button2_parent);
    instance_destroy(obj_dialogue_parent);
    return;
}