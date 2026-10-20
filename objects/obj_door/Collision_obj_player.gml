if global.playerLetter == obj_letterKey.keyValue && obj_room1.enemy_number <= 0 {
	with(obj_player){
		
		image_speed = 0;
		sprite_index = spr_Nplayer;
		can_move = false;
		alarm[2] = (game_get_speed(gamespeed_fps) * 1);
		transitionStart(Room2, sqc_fadeOut, sqc_fadeIn);
		x = 640;
		y = 600;
		
	}
}