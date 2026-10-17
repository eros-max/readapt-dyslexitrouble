
if global.room1 == false{
instance_create_depth(600, 600, 1, obj_player);
instance_create_depth(576, 192, 1, obj_Aenemy);
instance_create_depth(768, 192, 1, obj_Aenemy);
instance_create_depth(384, 192, 1, obj_Eshooter);
}
global.room1 = true