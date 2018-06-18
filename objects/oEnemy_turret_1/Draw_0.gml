/// @descr Draw Self/flash/hp text

image_speed = 0;

draw_self();


if (flash > 0)
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

if collision_circle(x,y,1000,oPlayer,false,0)
{
	image_angle = point_direction(x,y,oPlayer.x,oPlayer.y)
}

#region //image direction
if image_angle >= 90 && image_angle <= 270
{
	image_yscale = -1
}
else 
{
	image_yscale = 1
}
#endregion

draw_sprite(sWeapon_1_base,0,x,y)
//draw_sprite(sFloating_platform,0,x,y)