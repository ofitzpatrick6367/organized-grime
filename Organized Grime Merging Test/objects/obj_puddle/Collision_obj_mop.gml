image_alpha = image_alpha * 0.95;

if (image_alpha < 0.1)
{
    instance_destroy();
}
