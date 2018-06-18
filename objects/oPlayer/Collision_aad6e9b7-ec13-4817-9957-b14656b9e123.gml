/// @description Insert description here

if (global.pause) {exit;}

hp += other.hp
if hp > global.player_health {hp = global.player_health}

audio_play_sound(sfx_health_pickup,90,false)

with (other)
{
	//with instance_create_layer(x,y,"projectiles_layer",oParticle_smoke)
	//{owner = other}
	instance_destroy()
}