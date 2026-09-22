if enemy_health <= 0 {
	instance_destroy();
}

if distance_to_object(obj_player) <= 100 || enemy_health != 3{
	sprite_index = spr_Aenemy;
	image_blend = -1;
	alert = true;
}

if alert == true {
	move_towards_point(obj_player.x, obj_player.y, 3);
} else {
	sprite_index = spr_Aenemysleepy
	image_blend = c_gray;
	image_speed = 0.1;
	}