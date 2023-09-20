// In Global Mouse Left Pressed Event
if (messageState == 1) {
    var button_x = room_width / 2;
    var button_y = room_height / 2 + 200;

    var str = "I Understand";
    var str_width = string_width(str);
    var str_height = string_height(str);
    
    if (mouse_x >= button_x - str_width / 2 && mouse_x <= button_x + str_width / 2 &&
        mouse_y >= button_y - str_height / 2 && mouse_y <= button_y + str_height / 2) {
        // Text clicked, proceed to next stage
        messageState = 2;
        //sacrifice_index = irandom(array_length_1d(sacrifices) - 1); // Randomly select a sacrifice.
        return; // Skip the rest of the code to prevent cycling through messages and pictures.
    }
}

if (messageState == 0) {
    // This part will handle advancing the text and pictures when messageState is 0 (initial state)
    if (message_index < array_length_1d(messages) - 2) {
        message_index++;
    } else {
        message_index = array_length_1d(messages) - 1; // Keep at last message
        messageState = 1;  // Set to "I Understand" button state
    }

    if (picture_index < array_length_1d(pictures) - 1) {
        picture_index++;
    } else {
        picture_index = array_length_1d(pictures) - 1; // Keep at last picture
    }
}



