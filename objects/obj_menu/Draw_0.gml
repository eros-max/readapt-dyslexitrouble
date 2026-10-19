for (var i = 0 ; i < array_length(menu); i++)
{
	var text_color = c_white;
	
	if i == selected_option 
	{
		text_color = c_aqua;
	}
	
	draw_set_colour(text_color);
	draw_text_transformed((room_width / 2) - 100 * i, (room_height / 2) + 100 * i, menu[i], 4, 4, 0);
	draw_set_colour(-1);
}
