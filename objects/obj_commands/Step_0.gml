// Acessibilidade //

if keyboard_check_pressed(vk_f11){ // Deixar a tela cheia
	window_set_fullscreen(true);
	global.tela_cheia ++;
}
if global.tela_cheia >= 2{ // Reseta a variavel global.tela_cheia
	window_set_fullscreen(false);
	global.tela_cheia = 0;
}

/*

if room == Room1 

{
	if global.room1 == false{
	instance_create_depth(600, 600, 1, obj_player);
	instance_create_depth(576, 192, 1, obj_Aenemy);
	instance_create_depth(768, 192, 1, obj_Aenemy);
	instance_create_depth(384, 192, 1, obj_Eshooter);
}
	global.room1 = true
}