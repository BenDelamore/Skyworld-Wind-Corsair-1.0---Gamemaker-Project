/// @description Insert description here
// You can write your code in this editor

	with instance_create_layer(x,y,"projectiles_layer",oExplosion)
	{
		image_angle = random_range(0,360)
		image_speed = 1
		image_xscale = 0.5
		image_yscale = 0.5
	}
	

other.hp -= 1
instance_destroy()