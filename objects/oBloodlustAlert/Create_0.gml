// Calculate the position to center the box in the room

message[0] = "Pazuzumon requires a sacrifice!";
message[1] = "Pazuzumon demands tribute!";
message[2] = "Pazuzumon hungers for chaos!";

chosenMessage = message[irandom(array_length_1d(message) - 1)];

box_width = 1000;
box_height = 300;

global.box_x = (room_width - box_width) / 2;
global.box_y = (room_height - box_height) / 2;

global.lockScreen = true;




