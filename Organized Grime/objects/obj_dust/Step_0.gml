count = instance_number(obj_dust);

if (count <= 1000) {
    instance_create_depth(random(320), random(180), 0, obj_dust);
}

if (place_meeting(x, y, obj_teacup) == 0 and place_meeting(x, y, obj_plate ) == 0) {
    instance_destroy();
}


