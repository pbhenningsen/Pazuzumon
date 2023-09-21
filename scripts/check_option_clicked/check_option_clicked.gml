// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// In your check_option_clicked function
function check_option_clicked(option, x, y) {
    var str_width = string_width(option);
    var str_height = string_height(option);
    
    if (mouse_x >= x - str_width / 2 && mouse_x <= x + str_width / 2 &&
        mouse_y >= y - str_height / 2 && mouse_y <= y + str_height / 2) {
        
        if (option == option1) {
            outcomeState = 0; // For "Let it go."
            keepSprite = true; // Set keepSprite to true for letting go
        } else if (option == option2) {
            outcomeState = 1; // For "Kill it."
            keepSprite = false; // Set keepSprite to false for killing
        }

        showOutcome = true;
        outcomeTimer = 60; // set a timer, for example, 60 frames
        
        return true;
    }
    return false;
}
