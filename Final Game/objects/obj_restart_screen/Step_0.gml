timer += 1;

if (timer > wait_time) {
    // Check if the Play button was clicked
    if (mouse_check_button_pressed(mb_left)) {
        if (mouse_x >= btn_x && mouse_x <= btn_x + btn_width &&
            mouse_y >= btn_y && mouse_y <= btn_y + btn_height) {
            room_restart(); // Restart current room
        }
    }
}
