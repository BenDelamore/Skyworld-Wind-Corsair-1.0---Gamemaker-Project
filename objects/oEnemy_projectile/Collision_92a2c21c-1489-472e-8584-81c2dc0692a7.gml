/// @description Insert description here

oPlayer.hp -= 5
oCameraTarget.shake = 3
	
audio_play_sound(sfx_weapon_impact,100,false)

instance_destroy();
	
