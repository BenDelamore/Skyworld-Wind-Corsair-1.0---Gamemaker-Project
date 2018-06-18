/// @description Insert description here
// You can write your code in this editor

//part_emitter_burst(smoke,smoke_emitter,smoke_part,-1)

if !instance_exists(owner)
{
	timer -= 1
	if timer <= 0
	{
		part_system_destroy(smoke)
		instance_destroy()
	}
}
else
{
	x = owner.x - 200
	y = owner.y + 100

	part_emitter_region(smoke,smoke_emitter,x-2,x+2,y-2,y+2,ps_shape_ellipse,ps_distr_gaussian)
}
/*
timer -= 1

if timer <= 0 
{
	part_system_destroy(system)
	instance_destroy()
}