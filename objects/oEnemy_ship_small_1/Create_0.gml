/// @description Inherited event + Individual code
// Inherit the parent event
event_inherited();

states_array[states.attack] = scr_attack_2

hp = 44

dir = 0
spd = 3 + random(2)

maxspd = 2 + random(2)

//Bullet Timer
bullet_timer = 0

charge_timer = 0
charge = 0

//Enemy Hit visual feedback
knockback_timer = 1
flash = 0

//Timer/Death
death_timer = 0 //(sprite_get_number(sExplosion) * 5)
flame_frame = 0

//Detection circle for music
detection_circle = 1200
detection = 0

mp_potential_settings(75,10,10,1)

//Initialise Path??
set_path = noone
if set_path != noone
{
	path_start(set_path,spd,path_action_continue,false)
	state = states.path_following
}
else
{
	//Mode/state
	state = states.wander
}

counter = 0

move_wander = 0

start_x = x
start_y = y
