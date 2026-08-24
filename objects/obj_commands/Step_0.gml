// Acessibilidade //

if keyboard_check_pressed(vk_f11){ // Deixar a tela cheia
	window_set_fullscreen(true);
	global.tela_cheia ++;
}
if global.tela_cheia >= 2{ // Reseta a variavel global.tela_cheia
	window_set_fullscreen(false);
	global.tela_cheia = 0;
}