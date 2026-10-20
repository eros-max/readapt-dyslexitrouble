


if enemy_health <= 0 {
	with obj_room1{
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
	
	if instance_exists(obj_player){
		var path = path_add();
		mp_potential_path(path, obj_player.x, obj_player.y, 3, 4, 0);
		path_start(path, 3, 0, 0);
	}

} else {
	sprite_index = spr_Aenemysleepy
	image_blend = c_gray;
	image_speed = 0.1;
	}


image_xscale = lerp(image_xscale,2,0.1);
image_yscale = lerp(image_yscale,2,0.1);