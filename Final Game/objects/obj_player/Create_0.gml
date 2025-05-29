// #################### MOVEMENT VARIABLES ########################
move_speed = 2.5;   // Left/Right speed
jump_speed = -12;   // Upward jump speed
climb_speed = 2.5;  // Climbing speed
gravity_force = 0.5; // Gravity strength
max_fall_speed = 10; // Maximum downward speed
move_x = 0;          // Horizontal movement
move_y = 0;          // Vertical movement

// ################## STATE VARIABLES ###################
grounded = false;     // Whether player is grounded
is_climbing = false;  // Whether player is on a ladder

// ##################### DOUBLE JUMP ############################
current_jumps = 0;  // Tracks how many jumps have been performed
max_jumps = 2;      // Max double jumps allowed

// Flag to ensure fall sound plays only once per fall
has_fallen_sound_played = false;

