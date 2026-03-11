if (room == rm_fridge_open) {
    if (obj_fridgefood1.x == 80 and obj_fridgefood1.y == 64) {
        if (obj_fridgefood2.x == 128 and obj_fridgefood2.y == 16) {
            if (obj_fridgefood3.x == 112 and obj_fridgefood3.y == 96) {
                image_alpha = 1;
                obj_glove.house_1_fridge_clean = true;
            }
        }
    }
}
    
if (obj_glove.house_1_fridge_clean == true) {
    image_alpha = 1;
}
