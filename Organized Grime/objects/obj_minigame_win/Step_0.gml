if (room == rm_cleaning) {
    if (!instance_exists(obj_draggable_parent) and !instance_exists(obj_puddle)) {
        image_alpha = 1;
        obj_glove.house_1_kitchen_clean = true;
    }
}