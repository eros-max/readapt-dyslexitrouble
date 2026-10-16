if enemy_health <= 0 {
	with obj_commands{
		enemy_number -= 1;
	}
	
	with obj_player{
		pts_set(20);
	}
	instance_destroy();
}

if distance_to_object(obj_player) <= 100 || enemy_health != 3{
	sprite_index = spr_Aenemy;
	image_blend = -1;
	alert = true;
}

if alert == true {
	//move_towards_point(obj_player.x, obj_player.y, enemy_speed);
	mp_potential_step(obj_player.x + 10, obj_player.y + 10, 3, false);
} else {
	sprite_index = spr_Aenemysleepy
	image_blend = c_gray;
	image_speed = 0.1;
	}


image_xscale = lerp(image_xscale,2,0.1);
image_yscale = lerp(image_yscale,2,0.1);