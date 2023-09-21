// Set to Font1
draw_set_font(Font1);

// Calculate the dimensions for "Start Game" text
var str = "Start Game";
var str_width = string_width(str);
var str_height = string_height(str);

// Debug to ensure coordinates and dimensions are as expected
show_debug_message("Mouse X: " + string(mouse_x) + " Mouse Y: " + string(mouse_y));
show_debug_message("Start X: " + string(start_x) + " Start Y: " + string(start_y));
show_debug_message("Str Width: " + string(str_width) + " Str Height: " + string(str_height));

// Check if "Start Game" is clicked
if (mouse_x >= start_x - str_width / 2 && mouse_x <= start_x + str_width / 2 &&
    mouse_y >= start_y - str_height / 2 && mouse_y <= start_y + str_height / 2) {
    // Debug to show that the text was clicked
    show_debug_message("Clicked!");

    // Go to the main room
    room_goto(rMain);
}
