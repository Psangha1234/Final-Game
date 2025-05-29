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
    // Reset the fall sound flag when on ground, so sound can play again next time player falls
    has_fallen_sound_played = false;
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
if (y < -20 || y > room_height + 20 || x < -20 || x > room_width + 20) {
    if (!has_fallen_sound_played) {
        audio_play_sound(snd_fall, 0, false);  // Replace 'snd_fall' with your fall sound asset name
        has_fallen_sound_played = true;
    }
    room_goto(rm_restart);
}

// ################### WATER COLLECTION ###################
var water = instance_place(x, y, obj_water);
if (water != noone) {
    has_water = true; // ✅ Track that the player has collected water
    global.water_score += 1;
    audio_play_sound(snd_collect, 1, false); // Play sound once, no looping
    with (water) {
        instance_destroy();
    }
}

// ################### CAVE ENTRY CHECK WITH MESSAGE DELAY ###################
if (place_meeting(x, y, obj_cave)) {
    if (waiting_for_message) {
        // Do nothing this frame, wait for player to move away
    } else if (has_water) {
        room_goto_next();
    } else if (can_enter_cave) {
        show_message("You need to pick up the water before entering the cave!");
        can_enter_cave = false;
        waiting_for_message = true;
    }
} else {
    // Player moved away from cave, reset flags
    can_enter_cave = true;
    waiting_for_message = false;
}
