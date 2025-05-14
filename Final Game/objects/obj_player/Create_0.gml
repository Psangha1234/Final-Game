// #################### MOVEMENT VARIABLES ########################
move_speed = 2.5;   // left/right speed
jump_speed = -15;   // upward jump speed
climb_speed = 2.5;  // climbing speed
gravity_force = 0.5; // gravity strength
max_fall_speed = 10; // Maximum downward speed
move_x = 0;          // horizontal movement
move_y = 0;          // vertrical movement

// ##################   STATE VARIABLES  ###################
is_grounded = false;   // on ground?
is_climbing = false;   // on ladder?

//#################### health bar  ############################
hp = 100; 
hp_max = hp;
flash = 0;  


///////##################### double jump ###############
current_jumps = 0;
max_jumps = 2;








