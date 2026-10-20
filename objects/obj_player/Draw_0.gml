draw_self(); //Bota o player na tela (o desenha)

draw_text(1200, 700, "X: " + string(obj_player.x));
draw_text(1200, 680, "Y: " + string(obj_player.y));

var xx = 70;

repeat(global.player_health){
draw_sprite_ext(spr_playerLife, -1, 790 + xx, 680, 3, 3, image_angle, c_white, 1);
xx += 70;
}

draw_text(obj_player.x + 50, obj_player.y + 50, "HP: " + string(global.player_health));
draw_text(obj_player.x - 100, obj_player.y - 50, "PTS: " + string(global.pts));


draw_text_transformed(640, 640, string(global.playerLetter), 4, 4, 0);