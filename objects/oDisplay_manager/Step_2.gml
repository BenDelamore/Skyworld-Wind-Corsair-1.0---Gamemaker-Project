/// @description Follow Player

#region //my code attempts...
//Follow Player
if instance_exists(oPlayer)
{
	view_x = oPlayer.x - global.view_w/2;
	view_y = oPlayer.y - global.view_h/2;
}

view_x = clamp(view_x,global.view_w,room_width-global.view_w)
view_y = clamp(view_y,global.view_h,room_height-global.view_h)


camera_set_view_size(view_camera[0],global.view_w,global.view_h);
camera_set_view_pos(view_camera[0],view_x,view_y)
#endregion

#region //copied code
/*
/// @description Zoom Window & Toggle Sub Pixels
if(keyboard_check_pressed(ord("Q")))
{
  zoom++;
  if(zoom>max_zoom)
    zoom=1;
  window_set_size(ideal_width*zoom,ideal_height*zoom);
  display_set_gui_size(ideal_width*zoom,ideal_height*zoom);
  if(use_sub_pixels)
    surface_resize(application_surface,ideal_width*zoom,ideal_height*zoom);
  alarm[0]=1;
}

if(keyboard_check_pressed(ord("W")))
{
  use_sub_pixels=!use_sub_pixels
  if(use_sub_pixels)
    surface_resize(application_surface,ideal_width*zoom,ideal_height*zoom);
  else
    surface_resize(application_surface,ideal_width,ideal_height);
}

///Switch Rooms
if(mouse_check_button_pressed(mb_left))
{
  if(room == room_last)
    room_goto(1);
  else
    room_goto(room_next(room));
}
*/
#endregion

