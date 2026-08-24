// -- Ações do Player (não corrigida)--

//x=clamp(x, 36, room_width * 0.974); 
//y=clamp(y, 36, room_height * 0.95); // <- ^^ Impedem a saída do player da tela

	// Movimentação //


if keyboard_check(ord("W")) && !place_meeting(x, y - global.player_speed , obj_wall){ //Cima
	y -= global.player_speed;
}
if keyboard_check(ord("S")) && !place_meeting(x, y + global.player_speed, obj_wall){ //Baixo
	y += global.player_speed;
}
if keyboard_check(ord("A")) && !place_meeting(x - global.player_speed, y, obj_wall){ //Esquerda
	x -= global.player_speed;
}
if keyboard_check(ord("D")) && !place_meeting(x + global.player_speed, y, obj_wall){ //Direita
	x += global.player_speed;
}

	// Ataques //
	
if (global.pode_atirar == true) {

	if keyboard_check(vk_up) && global.pode_atirar == true{ //Tiro para Cima
		global.pode_atirar = false;
		alarm[0] = (game_get_speed(gamespeed_fps) * 0.3);
	
		var bullet = instance_create_layer(x , y, "Instances", obj_playerBullets);
		with(bullet)
		{
			speed = 10;
			direction = 90;
		}
	}

	if keyboard_check(vk_down) && global.pode_atirar == true{ //Tiro para Baixo
		global.pode_atirar = false;
		alarm[0] = (game_get_speed(gamespeed_fps) * 0.3);
	
		var bullet = instance_create_layer(x, y, "Instances", obj_playerBullets);
		with(bullet)
		{
			speed = 10;
			direction = -90;
		}
	}

	if keyboard_check(vk_left) && global.pode_atirar == true{ //Tiro para Esquerda	
		global.pode_atirar = false;
		alarm[0] = (game_get_speed(gamespeed_fps) * 0.3);
	
		var bullet = instance_create_layer(x, y, "Instances", obj_playerBullets);
	
		with(bullet)
		{
			speed = 10;
			direction = 180;
		}
	}

	if keyboard_check(vk_right) && global.pode_atirar == true{ //Tiro para Direita	
		global.pode_atirar = false;
		alarm[0] = (game_get_speed(gamespeed_fps) * 0.3);
	
		var bullet = instance_create_layer(x, y, "Instances", obj_playerBullets);
	
		with(bullet)
		{
			speed = 10;
			direction = 0;
		}
}
}