/// @description Insert description here

//-----------Create particle system
//create particle system
sand = part_system_create()
//create emitter
sand_emitter = part_emitter_create(sand)
//set emitter region
part_emitter_region(sand,sand_emitter,x-32,x+32,y-32,y+32,ps_shape_ellipse,ps_distr_gaussian)
//create particle
sand_part = part_type_create()
	
	//create particle effect
	part_type_speed(sand_part,4,5,0,0.2)
	part_type_direction(sand_part,200,220,0,0.3)
	part_type_life(sand_part,2000,2050)
	//part_type_alpha3(sand_part,0,1,0)
	//part_type_sprite(part,sWind,1,true,true)
	part_type_shape(sand_part,pt_shape_spark) 
	part_type_orientation(sand_part,0,0,0,0,true)
	part_type_size(sand_part,0.05,0.1,0,0)
	//part_type_scale(sand_part,1,2)
	part_type_color2(sand_part,make_color_rgb(255,255,255),make_color_rgb(255,255,255))
	//part_type_blend(sand_part,1)

part_emitter_stream(sand,sand_emitter,part,5)

//part_emitter_burst(sand,sand_emitter,part,50)

timer = 50