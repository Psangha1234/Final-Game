// Example game-over condition: player no longer exists (dead)
if (!instance_exists(obj_player)) {
    game_over = true;
}

// Create the restart screen only once after game over triggers
if (game_over && !instance_exists(obj_restart_screen)) {
    instance_create_layer(0, 0, "GUI", obj_restart_screen);
}




