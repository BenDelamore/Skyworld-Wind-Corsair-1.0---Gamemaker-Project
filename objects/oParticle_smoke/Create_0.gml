/// @description Code from class tutorial

//-----------Create particle system
//create particle system
smoke = part_system_create()
//create emitter
smoke_emitter = part_emitter_create(smoke)
//set emitter region
part_emitter_region(smoke,smoke_emitter,x-2,x+2,y-2,y+2,ps_shape_ellipse,ps_distr_gaussian)
//create particle
smoke_part = part_type_create()
	
	//create particle effect
	part_type_speed(smoke_part,0.1,0.5,0.05,0)
	part_type_direction(smoke_part,80,100,0,1)
	part_type_life(smoke_part,60,65)
	part_type_alpha2(smoke_part,1,0)
	//part_type_sprite(part,sWind,1,true,true)
	part_type_shape(smoke_part,pt_shape_cloud) 
	part_type_orientation(smoke_part,0,5,0,1,true)
	part_type_size(smoke_part,0.1,1,0.05,0.01)
	//part_type_scale(part,1,2)
	part_type_color2(smoke_part,make_color_rgb(90,90,90),make_color_rgb(255,255,255))
	//part_type_blend(smoke_part,1)

//part_emitter_stream(system,emitter,part,-20)

part_emitter_burst(smoke,smoke_emitter,smoke_part,1)

if instance_exists(oPlayer)
{
	owner = oPlayer
}
else 
{
	owner = oController
}

timer = 70


