wait_time = 30; // Delay before accepting input (frames)
timer = 0;

// Button size and position
btn_width = 200;
btn_height = 50;

var sw = display_get_gui_width();
var sh = display_get_gui_height();

btn_x = sw / 2 - btn_width / 2;
btn_y = sh / 2 + 64;

