// In Step Event
if (outcomeTimer > 0) {
    outcomeTimer--;

    if (outcomeTimer <= 0) {
        // Time's up, go back to rMain
        room_goto(rMain);

    }
}
