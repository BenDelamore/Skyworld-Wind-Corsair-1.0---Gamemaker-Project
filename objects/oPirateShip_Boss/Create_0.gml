/*
//states
state = states.idle

states_array[states.idle] = scr_idle
states_array[states.wander] = scr_wander
states_array[states.alert] = scr_alert
states_array[states.attack] = scr_attack_2
states_array[states.collision] = scr_enemy_collisiondetection

//movement
counter = 0

spd = 0.5

my_dir = irandom_range(0,360)
moveX = lengthdir_x(spd, my_dir)
moveY = lengthdir_y(spd, my_dir)

//health
hp = 100

Enemy_firingdelay = 10

timer = 4
*/

//other enemy AI code

scr_BasicCollision_init(1);

hp = 5000

dir = 0
spd = 3 + irandom(2)

mode = "wander"

bullet_timer = 0
bullet_timer_2 = 0

knockback_timer = 1

flash = 0

timer = 120
explosion_timer = 0
flame_frame = 0

counter = 0

detection = 2000
detection_circle = 2000