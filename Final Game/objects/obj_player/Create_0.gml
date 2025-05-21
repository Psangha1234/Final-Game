// #################### MOVEMENT VARIABLES ########################
move_speed = 2.5;       // Left/Right speed
jump_speed = -15;       // Upward jump speed (negative goes up)
climb_speed = 2.5;      // Not used right now
gravity_force = 0.5;    // Gravity strength
max_fall_speed = 10;    // Max falling speed
move_x = 0;             // Horizontal movement
move_y = 0;             // Vertical movement

// ################## STATE VARIABLES ###################
grounded = false;       // Whether player is on the ground
is_climbing = false;    // Not used right now

// ##################### DOUBLE JUMP ############################
current_jumps = 0;      // Tracks how many jumps used
max_jumps = 2;          // 2 = ground jump + 1 extra in air
