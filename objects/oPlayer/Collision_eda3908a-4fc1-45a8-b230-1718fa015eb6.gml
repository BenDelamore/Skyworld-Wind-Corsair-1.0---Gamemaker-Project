/// @description Insert description here
// You can write your code in this editor


if (global.pause) {exit;}

other.hp -= 5
hp -= 10

dir = point_direction(other.x,other.y,x,y)

spd = 10

x += lengthdir_x(spd,dir)
y += lengthdir_y(spd,dir)

oCameraTarget.shake = 5

if !audio_is_playing(sfx_crash_1)
{
	audio_play_sound(sfx_crash_1,80,false)
	audio_sound_gain(sfx_crash_1,0.7,0)
}
