/// @description Insert description here
// You can write your code in this editor

with (other)
{
	hp -= (15 + oProjectile_Boulder.speed*3)
	flash = 3
	
	mode = "knockback"
	knockback_timer = 0
	x += lengthdir_x(2,other.direction)
	y += lengthdir_y(2,other.direction)
}

oCameraTarget.shake = 2

instance_destroy();