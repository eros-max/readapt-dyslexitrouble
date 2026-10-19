with(obj_player){
	transitionStart(Room1, sqc_fadeOut, sqc_fadeIn);
	image_speed = 0;
	sprite_index = spr_Nplayer;
	can_move = false;
	alarm[2] = (game_get_speed(gamespeed_fps) * 1);
	x = 640;
	y = 600;
}