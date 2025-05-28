draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);

var sw = display_get_gui_width();
var sh = display_get_gui_height();

// Draw the "Game Over" text
draw_text(sw / 2, sh / 2 - 32, "Game Over");

// Draw the Play button with hover effect
if (mouse_x >= btn_x && mouse_x <= btn_x + btn_width &&
    mouse_y >= btn_y && mouse_y <= btn_y + btn_height) {
    draw_set_color(c_gray); // Hover color
} else {
    draw_set_color(c_dkgray); // Normal color
}

draw_rectangle(btn_x, btn_y, btn_x + btn_width, btn_y + btn_height, false);

// Draw the Play button text
draw_set_color(c_white);
draw_text(sw / 2, btn_y + btn_height / 2, "Play");

