// ##################### INPUTS #####################
// Left/right movement
move_x = keyboard_check(vk_right) - keyboard_check(vk_left);
move_x *= move_speed;

// ##################### COLLISION CHECK #####################
// Check if standing on the ground
grounded = place_meeting(x, y + 2, obj_ground);

// ✅ Reset jump counter when touching ground
if (grounded) {
    current_jumps = 0;
}

// ##################### GRAVITY #####################
if (!grounded) {
    move_y += gravity_force;
}

// Cap fall speed
if (move_y > max_fall_speed) {
    move_y = max_fall_speed;
}

// ########################### MOVEMENT ##########################
// Handle movement + collisions (assuming you have a custom script)
move_and_collide(move_x, move_y, obj_ground);

// ################### OUTSIDE ROOM CHECK ###################
// Restart room if player leaves bounds (like falling off the map)
if (y < -20 || y > room_height + 20 || x < -20 || x > room_width + 20) {
    room_restart();
}

var water = instance_place(x, y, obj_water);
if (water != noone) {
    global.water_score += 1;
    audio_play_sound(snd_collect, 1, false); // Play sound once, no looping
    with (water) {
        instance_destroy();
    }
}

