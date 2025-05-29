if (game_over && !instance_exists(obj_gameover_controller)) {
    instance_create_layer(room_width / 2, room_height / 2, "GUI", obj_gameover_controller);
}
