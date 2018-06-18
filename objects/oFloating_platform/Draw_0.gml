/// @description Insert description here
// You can write your code in this editor
image_speed = 0;

draw_self();

if flash > 0
{	
	flash -= 1;
	with linked
	{
		flash = other.flash
	}

	shader_set(shader_white_flash);
	draw_self();
	shader_reset();
}


