//Camera code?
//Build a camera at (0,0), with size 640x480, 0 degrees of angle, no target instance, instant-jupming hspeed and vspeed, with a 32 pixel border
camera = camera_create_view(0, 0, 640, 480, 0, -1, -1, -1, 32, 32);

//Set view0 to use the camera "camera"
view_set_camera(0, camera);

//Basic set up
camera_set_view_pos(view_camera[0], 0, 0);
camera_set_view_size(view_camera[0], 640, 480);

//Setting up object target information
camera_set_view_target(camera,oPlayer);
camera_set_view_speed(view_camera[0], -1, -1);
camera_set_view_border(view_camera[0], 32, 32);

//Shake the camera assigned to the current view
camera_set_view_pos(view_camera[view_current], random_range(-6,6), random_range(-6,6));

//Bind the bad screenshake script "update_script" to the desired cameras "begin"
camera_set_begin_script(view_camera[target_view],update_script);

zoom_level = 1;
//Get the starting view size to be used for interpolation later
default_zoom_width = camera_get_view_width(view_camera[0]);
default_zoom_height = camera_get_view_height(view_camera[0]);

//Move the zoom level based on mouse scrolling. Clamp the value so stuff doesn't get too silly.
zoom_level = clamp(zoom_level + (((mouse_wheel_down() - mouse_wheel_up())) * 0.1), 0.1, 5);

//Get current size
var view_w = camera_get_view_width(view_camera[0]);
var view_h = camera_get_view_height(view_camera[0]);

//Set the rate of interpolation
var rate = 0.2;

//Get new sizes by interpolating current and target zoomed size
var new_w = lerp(view_w, zoom_level * default_zoom_width, rate);
var new_h = lerp(view_h, zoom_level * default_zoom_height, rate);

//Apply the new size
camera_set_view_size(view_camera[0], new_w, new_h);

//Get the shift necessary to re-align the view.
var shift_x = camera_get_view_x(view_camera[0]) - (new_w - view_w) * 0.5;
var shift_y = camera_get_view_y(view_camera[0]) - (new_h - view_h) * 0.5;

//Update the view position
camera_set_view_pos(view_camera[0],shift_x, shift_y);

camera_set_view_pos(Camera_ID,
                    clamp( camera_get_view_x(Camera_ID), 0, room_width - camera_get_view_width(Camera_ID) ),
                    clamp( camera_get_view_y(Camera_ID), 0, room_height - camera_get_view_height(Camera_ID) ));