/// @description draw_sacrifice_text(_str)
/// @param {string} _str

function draw_sacrifice_text(_str) {
    show_debug_message("Called");

    // Set up the box dimensions
    var box_width = 1000;
    var box_height = 400; // This is not used. Remove it if you don't plan to use it later.

    // Calculate the position to center the box horizontally at the top of the room
    var box_x = room_width / 2; // Horizontal center
    var box_y = 50; // Top of the room

    // Set up text properties
    draw_set_halign(fa_center);
    draw_set_valign(fa_top);
    draw_set_font(Font1); // Replace with the font you are using
    draw_set_color(c_red);

    // Draw the text inside the box
    draw_text_ext(box_x, box_y, _str, 32, box_width); // Changed 'str' to '_str'
}
