// Check for left mouse click
if (mouse_check_button_pressed(mb_left)) {
    // Check if the bloodlust alert is currently active (shown)
    if (global.lockScreen) {
        // Find and destroy the bloodlust alert instance
        var alert_instance = instance_find(oBloodlustAlert, 0);
        if (alert_instance != noone) {
            instance_destroy(alert_instance);
        }
        
        // Unlock the screen
        global.lockScreen = false;
    }
}
