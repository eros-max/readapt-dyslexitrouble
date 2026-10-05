image_xscale = 1.5;
image_yscale = 1.5;


if distance_to_object(obj_player) <= 500{
	alerta = true;
} else { alerta = false; }


if alerta = true{
	if can_shoot == true{
		can_shoot = false;
		alarm[0] = (game_get_speed(gamespeed_fps) * 1);
		var bullet = instance_create_layer(x , y, "Instances", obj_enemyBullets);
				with(bullet)
				{
					speed = 5;
					direction = point_direction(x,y,obj_player.x,  obj_player.y);
				}
	}
}