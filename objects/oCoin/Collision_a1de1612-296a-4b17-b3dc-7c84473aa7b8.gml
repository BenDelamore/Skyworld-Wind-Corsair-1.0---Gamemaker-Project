/// @description Insert description here
// You can write your code in this editor

//if !audio_is_playing(sfx_coin_pickup)
//{
	audio_play_sound(sfx_coin_pickup_2,90,false)
//}
/*
else
{
	audio_queue_sound()
	audio_sound_pitch(sfx_coin_pickup,+1)
	
}
*/

global.coins_collected += 1
instance_destroy()
