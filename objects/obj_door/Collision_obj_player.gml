if global.playerLetter == obj_letterKey.keyValue && obj_commands.enemy_number <= 0 {
	with(obj_player){
		room_goto(Room2);
		x = 640;
		y = 600;
	}
}