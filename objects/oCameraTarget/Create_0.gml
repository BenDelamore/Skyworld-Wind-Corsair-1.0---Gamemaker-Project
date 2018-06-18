/// @description Initialise variables

mode = 0;

moveX = (x = lerp(x,oPlayer.x,0.1));
moveY = (y = lerp(y,oPlayer.y,0.1));

screen_width = display_get_width()
screen_height = display_get_height()

view_set_wport(view_camera[0],screen_width)
view_set_hport(view_camera[0],screen_height)

view_xport[0] = 0
view_yport[0] = 0

//display_set_gui_size(screen_width,screen_height)

guiWidth = display_get_gui_width();
guiHeight = display_get_gui_height();

camera = camera_get_active()

/*
view_zoom_width = camera_get_view_width(camera);
view_zoom_height = camera_get_view_height(camera);

view_max_zoom_width = (camera_get_view_width(camera)*2);
view_min_zoom_width = (camera_get_view_width(camera)/2);

view_max_zoom_height = (camera_get_view_height(camera)*2);
view_min_zoom_height = (camera_get_view_height(camera)/2);

view_max_zoom = view_max_zoom_width/view_max_zoom_height
*/

shake = 0;
shake_decay = 0.9;