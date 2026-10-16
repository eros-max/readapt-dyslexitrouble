if distance_to_object(obj_player) <= 300 || enemy_health != 5{
	alerta = true;
} else {
	alerta = false;
	}


if alerta = true{
	if can_shoot == true{
		can_shoot = false;
		image_blend = -1;
		alarm[0] = (game_get_speed(gamespeed_fps) * 1);
		sprite_index = spr_EshooterShooting;
		image_speed = .1;
		var bullet = instance_create_layer(x , y, "Instances", obj_enemyBullets);
				with(bullet)
				{
					audio_play_sound(snd_enemyShooting, 0, false);
					speed = 5;
					direction = point_direction(x,y,obj_player.x,  obj_player.y);
				}
	}
}


if enemy_health <= 0{
	with obj_commands{
		enemy_number -= 1;
	}
	
	with obj_player{
		pts_set(10);
	}
	instance_destroy();
}



image_xscale = lerp(image_xscale,2.5,0.1);
image_yscale = lerp(image_yscale,2.5,0.1);
image_blend = -1;

