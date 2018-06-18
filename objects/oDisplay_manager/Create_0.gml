#region //my code attempt...

/// @description Insert description here

//Display properties
ideal_width = 1920;
ideal_height = 1080;

display_zoom = 1;
max_zoom = 1;


aspect_ratio = display_get_width()/display_get_height();

//ideal_width = round(ideal_height*aspect_ratio);
ideal_height = round(ideal_width/aspect_ratio);

//Check for odd numbers
if (ideal_height & 1)
{
	ideal_height ++;
}

//Calculate max zoom
max_zoom = floor(display_get_width()/ideal_width);


camera = camera_create();

global.view_x = 0;
global.view_y = 0;
global.view_w = 0;
global.view_h = 0;


/*
for (var i=1; i<= room_last; i++)
{
	if (room_exists(i))
	{
		room_set_viewport(i,0,true,0,0,ideal_width,ideal_height)
	}
}
*/

surface_resize(application_surface,ideal_width,ideal_height);
window_set_size(ideal_width,ideal_height);

#endregion


#region //Copied code
/*
/// @description Ideal resolution

ideal_width=0;
ideal_height=256; //Doesn't matter because we are going to calculate this.
zoom=3;
max_zoom=1;


//Aspect ratio
aspect_ratio = display_get_width()/display_get_height();

//Calculate new ideal width.
ideal_width=round(ideal_height*aspect_ratio);
//ideal_height=round(ideal_width/aspect_ratio);

///////////////////////////
if(display_get_width() mod ideal_width != 0)
{
  var d = round(display_get_width()/ideal_width);
  ideal_width = display_get_width()/d;
}
if(display_get_height() mod ideal_height != 0)
{
  var d = round(display_get_height()/ideal_height);
  ideal_height = display_get_height()/d;
}
/////////////////////////////

ideal_width=round(ideal_width);
ideal_height=round(ideal_height);

//Check to make sure our ideal width and height isn't an odd number, as that's usually not good.

  
if(ideal_width & 1)
  ideal_width++;
      
if(ideal_height & 1)
  ideal_height++;
  
    
max_zoom = floor(display_get_width()/ideal_width);
      
for(var i=1; i<= room_last; i++)
{
  if(room_exists(i))
  {
    room_set_view(i,0,true,0,0,ideal_width,ideal_height,0,0,ideal_width,ideal_height,0,0,0,0,-1);
    
    room_set_view_enabled(i,true);
  }
}

surface_resize(application_surface,ideal_width,ideal_height);
display_set_gui_size(ideal_width,ideal_height);
window_set_size(ideal_width*zoom,ideal_height*zoom);

room_goto(room_next(room));
alarm[0]=1;

/* */
///Options
//use_sub_pixels=false;

/* */
/*  */
#endregion
