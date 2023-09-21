if (showOutcome == false) {
    if (global.messageState == 0 || global.messageState == 1) {
        draw_sacrifice_text(messages[message_index]);
        draw_sprite(pictures[picture_index], 0, room_width / 2, room_height / 2 - 100);
    } else if (global.messageState == 2) {
        draw_sacrifice_text(sacrifices[sacrifice_index]);
        draw_sprite(sacrifice_images[sacrifice_index], 0, room_width / 2, room_height / 2 - 100);
        
        // Draw the "Kill it." and "Let it go." options
        draw_option_text(room_width / 4, room_height - 100, option1);
        draw_option_text(3 * room_width / 4, room_height - 100, option2);
    }

    if (global.messageState == 1) {
        var button_x = room_width / 2;
        var button_y = room_height / 2 + 200;
        var str = "I Understand";
        var str_width = string_width(str);
        var str_height = string_height(str);

        if (mouse_x >= button_x - str_width / 2 && mouse_x <= button_x + str_width / 2 &&
            mouse_y >= button_y - str_height / 2 && mouse_y <= button_y + str_height / 2) {
            draw_set_color(c_red);
        } else {
            draw_set_color(c_white);
        }

        draw_set_font(Font1);
        draw_set_halign(fa_center);
        draw_set_valign(fa_middle);
        draw_text(button_x, button_y, str);
    }
} else {
    // This part will handle the outcomes.
    if (outcomeState == 0) {
        draw_outcome_text("You're going to regret this");
        
        // Only draw the squirrel if keepSprite is true
        if (keepSprite) {
            draw_sprite(sSquirrel, 0, room_width / 2, room_height / 2 - 100);
        }
    } else if (outcomeState == 1) {
        draw_outcome_text("As you crack its skull, it lets out a squeak");
        draw_sprite(sSquirrelDead, 0, room_width / 2, room_height / 2 - 100);
    }
}
