var i;
for (i = 0; i < hearts; i++)
{
    draw_sprite(heart_sp, 0, x + (-abs(sprite_width) / 2) + 5 * i, y - sprite_height / 2 - 6);
}
