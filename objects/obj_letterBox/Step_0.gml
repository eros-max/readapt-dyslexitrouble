distancia = distance_to_object(obj_player);

if seguindo == true{
	image_speed = 0.1;
	if distancia >= 35 {
		direction = point_direction(x, y, obj_player.x ,obj_player.y);
		speed = velocidade;
	} else {
		speed = 0;
		}
} else { image_speed = 0; }

//colisão roubada


if (place_meeting(x + hspeed, y, obj_letterBox)) {
    while (!place_meeting(x + sign(hspeed), y, obj_letterBox)) {
        x += sign(hspeed);
    }
    hspeed = 0;
}


if (place_meeting(x, y + vspeed, obj_letterBox)) {
    while (!place_meeting(x, y + sign(vspeed), obj_letterBox)) {
        y += sign(vspeed);
    }
    vspeed = 0;
}


if place_meeting(obj_player.x, obj_player.y, obj_letterBox) {
	seguindo = false;
	speed = 0;
}
