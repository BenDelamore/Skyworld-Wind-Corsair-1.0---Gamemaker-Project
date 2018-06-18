/// @description Zoom
/*

//Zoom
if mouse_check_button(ev_mouse_wheel_down)
{
	display_zoom ++;
	
	if display_zoom < max_zoom
	{
		zoom = 1;
	}
	
	window_set_size(ideal_width*zoom,ideal_height*zoom);
	surface_resize(application_surface,ideal_width*zoom,ideal_height*zoom);
	alarm[0] = 1;
}

if mouse_check_button(ev_mouse_wheel_up)
{
	display_zoom --;
	
	if display_zoom < 1
	{
		zoom = max_zoom;
	}
	
	window_set_size(ideal_width*zoom,ideal_height*zoom);
	surface_resize(application_surface,ideal_width*zoom,ideal_height*zoom);
	alarm[0] = 1;
}
