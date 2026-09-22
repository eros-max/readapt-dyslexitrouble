draw_self(); //Bota o player na tela (o desenha)

draw_text(1200, 700, "X: " + string(obj_player.x));
draw_text(1200, 680, "Y: " + string(obj_player.y));
draw_text(1200, 660, "Letra: " + string(global.playerLetter));
draw_text(obj_player.x + 50, obj_player.y + 50, "HP: " + string(global.player_health));
