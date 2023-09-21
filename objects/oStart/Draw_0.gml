// Set the general text properties
draw_set_font(Font2);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_red);

// Draw the "PAZUZUMON" text
draw_text(room_width / 2, room_height / 2 + 125, "PAZUZUMON");

// Change to Font1 for "Start Game"
draw_set_font(Font1);

// Calculate the position for "Start Game" text
var start_x = room_width / 2;
var start_y = room_height / 2 + 200;  // Adjust the Y-coordinate as you see fit

// Calculate the dimensions for "Start Game" text
var str = "Start Game";
var str_width = string_width(str);
var str_height = string_height(str);

// Check if mouse is hovering over the "Start Game" text
if (mouse_x >= start_x - str_width / 2 && mouse_x <= start_x + str_width / 2 &&
    mouse_y >= start_y - str_height / 2 && mouse_y <= start_y + str_height / 2) {
    // Draw the underline if hovered
    draw_line(start_x - str_width / 2, start_y + str_height / 2 + 2, start_x + str_width / 2, start_y + str_height / 2 + 2);
}

// Draw the "Start Game" text
draw_text(start_x, start_y, str);
