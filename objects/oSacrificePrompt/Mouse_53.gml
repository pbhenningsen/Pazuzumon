// In Global Mouse Left Pressed Event
if (global.messageState == 1) {
    var button_x = room_width / 2;
    var button_y = room_height / 2 + 200;

    var str = "I Understand";
    var str_width = string_width(str);
    var str_height = string_height(str);
    
    if (mouse_x >= button_x - str_width / 2 && mouse_x <= button_x + str_width / 2 &&
        mouse_y >= button_y - str_height / 2 && mouse_y <= button_y + str_height / 2) {
        // Text clicked, proceed to next stage
        global.messageState = 2;
        //sacrifice_index = irandom(array_length_1d(sacrifices) - 1); // Randomly select a sacrifice.
        return; // Skip the rest of the code to prevent cycling through messages and pictures.
    }
}

if (global.messageState == 0) {
    // This part will handle advancing the text and pictures when global.messageState is 0 (initial state)
    if (message_index < array_length_1d(messages) - 2) {
        message_index++;
    } else {
        message_index = array_length_1d(messages) - 1; // Keep at last message
        global.messageState = 1;  // Set to "I Understand" button state
    }

    if (picture_index < array_length_1d(pictures) - 1) {
        picture_index++;
    } else {
        picture_index = array_length_1d(pictures) - 1; // Keep at last picture
    }
}
// In Global Mouse Left Pressed Event
if (global.messageState == 2) {
    var option1_clicked = check_option_clicked(option1, room_width / 4, room_height - 100);
    var option2_clicked = check_option_clicked(option2, 3 * room_width / 4, room_height - 100);
    
    // You can add additional logic here based on whether option1_clicked or option2_clicked are true.
}

