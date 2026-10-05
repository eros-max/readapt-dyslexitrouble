instance_destroy();

with obj_player
{
	if global.can_suffer == true
	{
	health_set(global.player_health - 1);
	global.can_suffer = false;
	alarm[1] = (game_get_speed(gamespeed_fps) * 1);
	}
}