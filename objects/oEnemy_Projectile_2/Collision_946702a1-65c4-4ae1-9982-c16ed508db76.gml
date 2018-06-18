/// @description Insert description here
// You can write your code in this editor
with (other)
{
	hp -= (15 + other.speed*10)
	
	x += lengthdir_x(5,other.direction)
	y += lengthdir_y(5,other.direction)
}

oCameraTarget.shake = 3
	
audio_play_sound(sfx_crash_1,100,false)

instance_destroy();
	