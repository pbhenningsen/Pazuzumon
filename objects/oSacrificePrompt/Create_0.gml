if (!global.visitedSacrificeRoom) {
	messages = [
		"Your Pazuzumon's BLOOD LUST will increase over time. When it reaches a certain point, your Pazuzumon will demand a BLOOD SACRIFICE.",
		"This means you will have to go out into the night and capture a living thing for your Pazuzumon to consume.",
		"Fail to provide your Pazuzumon with a sacrifice for too long, and it will start to ACT OUT, unleashing its fury on society at large.",
		"Your Pazuzumon is still a baby, so for now small animals will suffice. But as your Pazuzumon grows, its demands may become more extreme, and harder to fulfill.",
		"Be careful not to call too much attention to yourself while finding prey. The authorities are always watching."]
	message_index = 0;
	message_timer = 0;
	messageState = 0;
	
    global.visitedSacrificeRoom = true;
} 



pictures = [
	sPazuzumonDreaming, 
	sYouCrowbar, 
	sPazuzumonBomb, 
	sCat, 
	sHandcuffs
	] 
	
picture_index = 0;
picture_timer = 0;


sacrifices = [
	"You venture out into the woods, and you see a squirrel. Its little eyes are beady and it reminds you of your favorite cartoon.",
	"You walk out into the woods, and you see a squirrel. Its little eyes are beady and they remind you of your favorite cartoon.",
	"You walk into the woods and see a squirrel. It has beady little eyes and reminds you of your favorite cartoon.",
];

sacrifice_images = [
	sSquirrel,
	sSquirrel,
	sSquirrel
	]
sacrifice_index = irandom(array_length_1d(sacrifices) - 1); // Randomly set index
