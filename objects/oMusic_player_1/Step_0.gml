/// @description Insert description here

#region //play music if enemy exists
if instance_exists(oEnemy)
{
	if oEnemy.detection = 1
	{
		audio_sound_gain(mus_2_TimeToRunFinale,0,1000)
		if !audio_is_playing(mus_1_Pollution)
		{
			audio_play_sound(mus_1_Pollution,1000,true)
			audio_sound_gain(mus_1_Pollution,0,0)
		}
		if audio_is_paused(mus_1_Pollution)
		{
			audio_resume_sound(mus_1_Pollution)
			audio_sound_gain(mus_1_Pollution,0,0)
		}
		audio_sound_gain(mus_1_Pollution,1,1000)
	}

	if oEnemy.detection = 0
	{
		if audio_is_playing(mus_1_Pollution)
		{
			audio_sound_gain(mus_1_Pollution,0,1000)
		}
		if audio_is_paused(mus_2_TimeToRunFinale)
		{
			audio_resume_sound(mus_2_TimeToRunFinale)
		}
		audio_sound_gain(mus_2_TimeToRunFinale,1,1000)
		
		if (audio_sound_get_gain(mus_1_Pollution) <=0)
		{
			audio_pause_sound(mus_1_Pollution)
		}
	}
}
#endregion

if !instance_exists(oEnemy)
{
	if audio_is_playing(mus_1_Pollution)
	{
		audio_sound_gain(mus_1_Pollution,0,2000)
	}
	
	if audio_sound_get_gain(mus_1_Pollution) <= 0
	{
		audio_stop_sound(mus_1_Pollution)
	}
	
	if !audio_is_playing(mus_2_TimeToRunFinale)
	{
		audio_play_sound(mus_2_TimeToRunFinale,1000,true)
	}
	
	if audio_is_paused(mus_2_TimeToRunFinale)
	{
		audio_resume_sound(mus_2_TimeToRunFinale)
	}
	
	audio_sound_gain(mus_2_TimeToRunFinale,1,2000)
}


if (audio_sound_get_gain(mus_2_TimeToRunFinale) <= 0)
{
	audio_pause_sound(mus_2_TimeToRunFinale)
}

