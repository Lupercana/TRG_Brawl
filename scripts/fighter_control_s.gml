// Constants
gravity = 1;
move_speed = 1;
jump_height = 8;

// Check Inputs
right_key = keyboard_check(vk_right); 
left_key = keyboard_check(vk_left);
jump_key = keyboard_check(vk_space);

// Apply Gravity
vspeed += gravity;

// Movement
hspeed = (right_key - left_key) * move_speed;

// Jumping
if (vspeed == 0)
    vspeed = jump_key * -jump_height;

// Vertical Collision
if (place_meeting(x, y + vspeed, floor_obj))
{
    while (!place_meeting(x, y + sign(vspeed), floor_obj))
    {
        y += sign(vspeed);
    }
    vspeed = 0;
}
y += vspeed;

// Horizontal Collision
x += hspeed;

