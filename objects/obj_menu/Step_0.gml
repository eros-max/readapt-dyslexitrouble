if keyboard_check_pressed(ord("S"))
{
	selected_option++
}

if keyboard_check_pressed(ord("W"))
{
	selected_option--
}

selected_option = clamp(selected_option, 0, array_length(menu)-1);

if selected_option == 0 && keyboard_check_pressed(vk_space)
{
	room_goto(Room1);
}

if selected_option == 1 && keyboard_check_pressed(vk_space)
{
	game_end();
}