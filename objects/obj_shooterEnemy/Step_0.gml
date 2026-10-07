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

if enemy_health <= 0{
	instance_destroy();
}

image_xscale = lerp(image_xscale,2.5,0.1);
image_yscale = lerp(image_yscale,2.5,0.1);
image_blend = c_white;