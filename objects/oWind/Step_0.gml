/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,oPlayer)
{
	if !audio_is_playing(sfx_Wind_2)
	{
		audio_play_sound(sfx_Wind_2,80,true)
		audio_sound_gain(sfx_Wind_2,0,0)
	}
	audio_sound_gain(sfx_Wind_2,1,1000)


	oPlayer.hspd += lengthdir_x( 0.11, image_angle+90 );
	oPlayer.vspd += lengthdir_y( 0.11, image_angle+90 );
}
else
{
	if audio_is_playing(sfx_Wind_2)
	{
		audio_sound_gain(sfx_Wind_2,0,1000)
	}
	
	if audio_sound_get_gain(sfx_Wind_2) <= 0
	{
		audio_stop_sound(sfx_Wind_2 )
	}
}