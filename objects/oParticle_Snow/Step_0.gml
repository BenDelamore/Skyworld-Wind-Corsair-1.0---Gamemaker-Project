/// @description Insert description here
// You can write your code in this editor

/*
if rm_end = true
{
	part_emitter_destroy(snow, snow_emitter);
	part_type_destroy(snowflake);
	part_system_destroy(snow);
}

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