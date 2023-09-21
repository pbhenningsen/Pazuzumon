// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_outcome_text(){
/// draw_outcome_text(str)
var str = argument[0];
draw_set_font(Font1);
draw_set_color(c_red);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_text(room_width / 2, 50, str); // 50 is y-coordinate at the top of the screen

}