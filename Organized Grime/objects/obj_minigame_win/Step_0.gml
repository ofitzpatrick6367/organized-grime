if (room == rm_cleaning) {
    if (!instance_exists(obj_draggable_parent) and !instance_exists(obj_puddle)) {
        image_alpha = 1;
        obj_glove.house_1_kitchen_clean = true;
    }
}

/* else if (room == rm_fridge_open) {
    if (obj_fridge_closed.image_alpha == 1) {
        image_alpha = 1;
    }
}