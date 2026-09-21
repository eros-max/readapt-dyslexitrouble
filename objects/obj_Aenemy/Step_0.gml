/*
if place_meeting(obj_Aenemy.x, obj_Aenemy.y, obj_bulletAOE){
	enemy_health -= 1;
}
*/

if enemy_health <= 0 {
	instance_destroy();
}