// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_option_text(){
// Script: draw_option_text(x, y, str)
var _x = argument0;
var _y = argument1;
var str = argument2;
var str_width = string_width(str);
var str_height = string_height(str);

draw_set_font(Font1);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if (mouse_x >= _x - str_width / 2 && mouse_x <= _x + str_width / 2 &&
    mouse_y >= _y - str_height / 2 && mouse_y <= _y + str_height / 2) {
    // Draw the text with underline if hovered
    draw_text_ext(_x, _y, str, -1, str_width);
    draw_line(_x - str_width / 2, _y + str_height / 2, _x + str_width / 2, _y + str_height / 2);
    draw_set_color(c_red);
} else {
    // Draw the text with red color if not hovered
    draw_set_color(c_red);
    draw_text(_x, _y, str);
}

}