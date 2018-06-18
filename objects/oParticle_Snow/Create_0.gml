 /// @description Insert description here
// You can write your code in this editor

//-----------Create particle system
snow = part_system_create()
	part_system_depth(snow,-5)
 
//-----------Create a snowflake particle
snowflake = part_type_create()
	part_type_shape(snowflake,pt_shape_snow)
	part_type_orientation(snowflake,0,0,0,0,1)
	part_type_size(snowflake,0.05,0.2,0,0)
	part_type_speed(snowflake,2,5,0,0.01)
	part_type_direction(snowflake,225,245,0,0.01)
	part_type_life(snowflake,1400,1600)

//-----------Make it snow
camera = camera_get_active()

	x1 = 0
	x2 = room_width+700
	y1 = -10
	y2 = 0

snow_emitter = part_emitter_create(snow)
	part_emitter_region(snow,snow_emitter,x1,x2,y1,y2,ps_shape_rectangle,ps_distr_linear)
	part_emitter_stream(snow,snow_emitter,snowflake,1)

//Fill room with snow before start???
repeat (1000)
{
	part_system_update(snow)
}


//Initialise Room End Variable
rm_end = false

/*
//Stop Particle emitter
if part_system_exists(snow)
{
	part_system_automatic_update(snow,true)
	part_system_automatic_draw(snow,true)
}
else
{
	part_system_automatic_update(snow,false)
	part_system_automatic_draw(snow,false)
}

