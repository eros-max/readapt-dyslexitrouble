if global.room1 == false{
	with Room1 {
		instance_create_layer(600, 600, "Instances",obj_player);
		instance_create_depth(576, 192, 1, obj_Aenemy);
		instance_create_depth(768, 192, 1, obj_Aenemy);
		instance_create_depth(384, 192, 1, obj_Eshooter);

		global.room1 = true
	}
}

if instance_exists(obj_player){
	if global.player_health <= 0 {
		enemy_number = 0;
		global.room1 = false;	
	}
}

