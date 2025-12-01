/*if (instance_exists(obj_button9_pressed)) {
    if (!instance_exists(obj_button1_pressed)) {
        instance_destroy(obj_button1_pressed);
        instance_destroy(obj_button2_pressed);
        instance_destroy(obj_button3_pressed);   
        instance_destroy(obj_button4_pressed);   
        instance_destroy(obj_button5_pressed);
        instance_destroy(obj_button6_pressed);
        instance_destroy(obj_button7_pressed);
        instance_destroy(obj_button8_pressed);
        instance_destroy(obj_button9_pressed);
    }
}
if (instance_exists(obj_button5_pressed)) {
    if (!instance_exists(obj_button9_pressed) || !instance_exists(obj_button1_pressed)) {
        instance_destroy(obj_button1_pressed);
        instance_destroy(obj_button2_pressed);
        instance_destroy(obj_button3_pressed);   
        instance_destroy(obj_button4_pressed);   
        instance_destroy(obj_button5_pressed);
        instance_destroy(obj_button6_pressed);
        instance_destroy(obj_button7_pressed);
        instance_destroy(obj_button8_pressed);
        instance_destroy(obj_button9_pressed);
    }
}
if (instance_exists(obj_button4_pressed)) {
    if (!instance_exists(obj_button1_pressed) || !instance_exists(obj_button9_pressed) || !instance_exists(obj_button5_pressed) || !instance_exists(obj_button4_pressed)) {
        instance_destroy(obj_button1_pressed);
        instance_destroy(obj_button2_pressed);
        instance_destroy(obj_button3_pressed);   
        instance_destroy(obj_button4_pressed);   
        instance_destroy(obj_button5_pressed);
        instance_destroy(obj_button6_pressed);
        instance_destroy(obj_button7_pressed);
        instance_destroy(obj_button8_pressed);
        instance_destroy(obj_button9_pressed);
    }
}
*/

if (instance_exists(obj_button1_pressed)) {
    button1 = 1;
    if (instance_exists(obj_button9_pressed)) {
        button2 = 9;
        if (instance_exists(obj_button5_pressed)) {
            button3 = 5;
            if (instance_exists(obj_button4_pressed)) {
                button4 = 4;
                if ((button1 * button2 / button3 - button4) = (1 * 9 / 5 - 4)){
                    room_goto(rm_safe_open);
                }
            }
            else {
                exit;
            }
        }
        else {
            exit;
        }
    }
    else {
        exit;
    }
}
else {
    exit;
}
