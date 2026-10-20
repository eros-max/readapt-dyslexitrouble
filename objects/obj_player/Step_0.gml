// -- Ações do Player (não corrigida)--

//x=clamp(x, 36, room_width * 0.974); 
//y=clamp(y, 36, room_height * 0.95); // <- ^^ Impedem a saída do player da tela

	// Movimentação //
	
	if can_move
	{
		var up = keyboard_check(ord("W"));
		var down = keyboard_check(ord("S"));
		var left = keyboard_check(ord("A"));
		var right = keyboard_check(ord("D"));
	
		var horizontal = (right - left);
		var vertical = (down - up);
	
		var hsp = 0;
		var vsp = 0;

	
		if (horizontal != 0 && vertical != 0) {
			hsp = horizontal * diagonal_player_speed;
			vsp = vertical * diagonal_player_speed;
		} else {
			hsp = horizontal * player_speed;
			vsp = vertical * player_speed;
		}
	
		if (place_meeting(x + hsp,y,obj_wall)){
			while(!place_meeting(x+sign(hsp),y,obj_wall)){
				x += sign(hsp);
			}
			hsp = 0;
	}

		if (place_meeting(x,y + vsp,obj_wall)){
			while(!place_meeting(x,y+sign(vsp),obj_wall)){
				y += sign(vsp);
			}
			vsp = 0;
	}

		if(down) {
			sprite_index = spr_Nplayer_downing;
		}
		else if(up){
			sprite_index = spr_Nplayer_uping;
		}
		else if(left){
			sprite_index = spr_Nplayer_lefting;
		}
		else if(right){
			sprite_index = spr_Nplayer_righting;
		}
		else {
			sprite_index = spr_Nplayer;
		}
	
		x+=hsp;
		y+=vsp;
	} else {
		var up = 0;
		var down = 0;
		var left = 0;
		var right = 0;
	}
	

	
image_xscale = lerp(image_xscale,3,0.1);
image_yscale = lerp(image_yscale,3,0.1);

pts_set = function(value){
	global.pts += (value * times);
}

health_set = function(new_value){
	if global.player_health != new_value {
		audio_play_sound(snd_playerSuffering, 0, false);
		global.player_health = new_value;
	}
}




	// Ataques //
	
if (global.pode_atirar == true) {

	if keyboard_check(vk_up) && global.pode_atirar == true{ //Tiro para Cima
		global.pode_atirar = false;
		alarm[0] = (game_get_speed(gamespeed_fps) * 0.3);
		
		var bullet = instance_create_layer(x , y, "Instances", obj_playerBullets);
		with(bullet)
		{
			audio_play_sound(snd_playerShooting, 0, false);
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
			audio_play_sound(snd_playerShooting, 0, false);
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
			audio_play_sound(snd_playerShooting, 0, false);
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
			audio_play_sound(snd_playerShooting, 0, false);
			speed = 10;
			direction = 0;
		}
}
}

if global.can_suffer == true && place_meeting(x, y, obj_Aenemy) {
	health_set(global.player_health - 1);
	global.can_suffer = false;
	alarm[1] = (game_get_speed(gamespeed_fps) * 1.5);
}

if (global.can_suffer == false){
	if (blinking == true){
		image_alpha -= 1;
		
		if (image_alpha <= -1){
			blinking = false;
		}
		
	} else {
		image_alpha += 1;
		
		if (image_alpha >= 2){
			blinking = true;
		}
	}
	
	if global.player_health <= 0 {
		/*obj_room1.enemy_number = 0;
		global.room1 = false;*/
		transitionStart(Menu, sqc_diagonalOut, sqc_diagonalIn);
		game_restart();
		
	}
}

if room == Menu {
	instance_destroy();
}