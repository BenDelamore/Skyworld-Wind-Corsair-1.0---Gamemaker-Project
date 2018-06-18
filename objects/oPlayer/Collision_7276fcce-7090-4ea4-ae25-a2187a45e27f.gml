/// @description Insert description here
// You can write your code in this editor

if (global.pause) {exit;}

if !audio_is_playing(sfx_crash_1)
{
	audio_play_sound(sfx_crash_1,80,false)
	audio_sound_gain(sfx_crash_1,0.7,0)
}

oCameraTarget.shake = 5