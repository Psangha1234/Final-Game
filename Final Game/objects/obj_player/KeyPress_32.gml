if (grounded) {
    // First jump from ground
    move_y = jump_speed;
    grounded = false;
    current_jumps = 1;
}
else if (current_jumps < max_jumps) {
    // Double jump in air
    move_y = jump_speed;
    current_jumps += 1;
}