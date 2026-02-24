if (room == rm_fridge_open) {
    if (onecorrect == true and twocorrect == true and threecorrect == true and fourcorrect == false) {
        image_alpha = 1;
        obj_glove.house_1_fridge_clean = true;
    }
    
    if (obj_glove.house_1_fridge_clean == true) {
        image_alpha = 1;
    }
}