/// @description Special Key Press actions


if keyboard_check_released(vk_escape)
{
	do_transition = true
	spawn_room = room_menu
	if room != room_levelFinish
	{
		global.coins_collected = 0
	}
}

if keyboard_check_released(vk_backspace)
{
	other_transition = true
}


#region //Quit --- delete
if keyboard_check_released(vk_delete)
{
	game_end()
}
#endregion

/*
#region //Fullscreen
if keyboard_check_pressed(ord("F"))
{
	if window_get_fullscreen() 
	{
		window_set_fullscreen(false);
		//guiWidth = display_get_gui_width()
		//guiHeight = display_get_gui_height()
	}
	else
	{
		window_set_fullscreen(true);
		//guiWidth = display_get_gui_width()
		//guiHeight = display_get_gui_height()
	}
}
#endregion