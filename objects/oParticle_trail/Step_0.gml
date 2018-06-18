///Description Timer

if !instance_exists(owner)
{
	part_system_destroy(trail)
	instance_destroy()
}
else
{
	x = owner.x
	y = owner.y

	part_emitter_region(trail,trail_emitter,x-2,x+2,y-2,y+2,ps_shape_ellipse,ps_distr_gaussian)
}
/*
timer -= 1

if timer <= 0 
{
	part_system_destroy(trail)
	instance_destroy()
}