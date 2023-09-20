// Increase Bloodlust
global.bloodLust += global.bloodLustRate;

// Cap at Max Value and show alert
if(global.bloodLust >= global.bloodLustMax) {
    global.bloodLust = global.bloodLustMax;
    
    // Create the oBloodlustAlert instance
    instance_create_layer(global.box_x, global.box_y, "AlertLayer", oBloodlustAlert);
    
    // Reset bloodlust after displaying the message
	hungry = true;
    global.bloodLust = 0;
	
}

// Reset Alarm
alarm[0] = 120;

