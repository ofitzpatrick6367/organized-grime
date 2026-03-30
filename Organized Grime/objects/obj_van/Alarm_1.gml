if (black.image_alpha < 1 and x < -128) {
    black.image_alpha += 0.05;
    alarm[1] = 1;
}

if (black.image_alpha = 1) {
    x = -127;
    black.image_alpha = 0;
}
