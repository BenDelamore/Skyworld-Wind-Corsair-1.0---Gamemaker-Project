/// @description Insert description here

with (other)
{
	hp -= (15 + oProjectile_explosive.speed*10)
	flash = 3
	
	mode = "knockback"
	knockback_timer = 0
	x += lengthdir_x(3,other.direction)
	y += lengthdir_y(3,other.direction)
}

with instance_create_layer(x,y,"projectiles_layer",oExplosion)
{
	image_angle = random_range(0,360)
	image_speed = 1
	image_xscale = 0.5
	image_yscale = 0.5
}

instance_destroy();
