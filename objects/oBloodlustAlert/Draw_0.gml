  // Draw the box
draw_set_color(c_white);
draw_rectangle(global.box_x, global.box_y, global.box_x + box_width, global.box_y + box_height, false);

// Set text properties
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(Font1);

// Calculate the center position of the box
var text_x = global.box_x + (box_width / 2);
var text_y = global.box_y + (box_height / 2);

// Draw the text
draw_text(text_x, text_y, chosenMessage);