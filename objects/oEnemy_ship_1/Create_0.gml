#region //Old AI code

//states
state = states.idle

states_array[states.idle] = scr_idle
states_array[states.wander] = scr_wander
states_array[states.alert] = scr_alert
states_array[states.attack] = scr_attack
states_array[states.path_following] = scr_path

//movement
counter = 0

spd = 0.5

dir = irandom_range(0,360)
moveX = lengthdir_x(spd, dir)
moveY = lengthdir_y(spd, dir)

//health
hp = 100

Enemy_firingdelay = 10

timer = 4


//other enemy AI code

#endregion
/*
//mp_grid pathfinding stuff
//pos = 1;
//xx = path_get_point_x(global.path, pos);
//yy = path_get_point_y(global.path,pos);

//Create path?
xx = oPlayer.x
yy = oPlayer.y
path = path_add();

alarm[0] = 2*room_speed
*/

//Basic Collision Set Up
scr_BasicCollision_init(1);

hp = 100

dir = 0
spd = 2 + random(2)

maxspd = 2 + random(2)

//Bullet Timer
bullet_timer = 0

//Image scale timer
image_dir_timer = 0

//Enemy Hit visual feedback
knockback_timer = 1
flash = 0

//Enemy Collision Timer
collision_timer = 0
collision_spd = 0

//Timer/Death
death_timer = 0 //(sprite_get_number(sExplosion) * 5)
flame_frame = 0

spawn_health = false
if irandom(10)=10
{
	spawn_health = true
}

//Detection circle for music
detection_circle = 1200
detection = 0

mp_potential_settings(90,15,5,1)

//Initialise Path??
set_path = noone
if set_path != noone
{
	path_start(set_path,spd,path_action_continue,false)
	mode = "patrol"
}
else
{
	//Mode/state
	mode = "wander"
}

//Move Counters
counter = 0

move_wander = 0

//x = instance_position()

start_x = x
start_y = y

/*
x = start_x
y = start_y

player_x = oPlayer.x;
player_y = oPlayer.y;


collision_circle = instance_create_layer(x,y,player_layer,oCollision_circle)
collision_circle.xscale = 0.5
collision_circle.yscale = 0.5
