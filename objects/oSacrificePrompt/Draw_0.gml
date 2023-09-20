// In Draw Event
if (messageState == 0 || messageState == 1) {
    draw_sacrifice_text(messages[message_index]);
	draw_sprite(pictures[picture_index], 0, room_width/2, room_height/2 - 100); // Change the position and sub-image index (0 here) as needed
} else if (messageState == 2) {
    draw_sacrifice_text(sacrifices[sacrifice_index]);
	draw_sprite(sacrifice_images[sacrifice_index],0,room_width/2,room_height/2-100);
}
//var chosenAnimal = global.currentAnimal;
//draw_sprite(chosenAnimal, 0, room_width / 2, room_height - 500);

if (messageState == 1) {
 // In Draw Event
var button_x = room_width / 2;
var button_y = room_height / 2 + 200;

var str = "I Understand";
var str_width = string_width(str);
var str_height = string_height(str);

// Check if mouse is hovering over the text
if (mouse_x >= button_x - str_width / 2 && mouse_x <= button_x + str_width / 2 &&
    mouse_y >= button_y - str_height / 2 && mouse_y <= button_y + str_height / 2) {
    // Draw the text with red color if hovered
    draw_set_color(c_red);
} else {
    // Draw the text with white color if not hovered
    draw_set_color(c_white);
}

draw_set_font(Font1);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(button_x, button_y, str);
}
