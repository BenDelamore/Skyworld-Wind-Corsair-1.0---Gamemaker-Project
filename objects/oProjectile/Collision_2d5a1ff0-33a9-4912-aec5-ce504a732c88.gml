/// @description Insert description here
// You can write your code in this editor

with (other)
{
	hp -= 15
	flash = 3
}

oCameraTarget.shake = 1

audio_play_sound(sfx_weapon_impact,80,false)
//audio_sound_gain(sfx_weapon_impact,1,0)


instance_destroy();