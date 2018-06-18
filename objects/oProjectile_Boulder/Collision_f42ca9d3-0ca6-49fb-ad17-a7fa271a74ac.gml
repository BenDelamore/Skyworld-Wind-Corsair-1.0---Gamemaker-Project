/// @description Insert description here
// You can write your code in this editor

with (other)
{
	hp -= (15 + oProjectile_Boulder.speed*3)
	flash = 3
	
	mode = "knockback"
	knockback_timer = 0
	x += lengthdir_x(6,other.direction)
	y += lengthdir_y(6,other.direction)
}

oCameraTarget.shake = 3

audio_play_sound(sfx_crash_1,80,false)

instance_destroy();