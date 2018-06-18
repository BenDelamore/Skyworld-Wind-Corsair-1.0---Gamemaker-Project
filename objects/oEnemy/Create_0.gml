//states
state = states.idle

states_array[states.idle] = scr_idle
states_array[states.wander] = scr_wander
states_array[states.alert] = scr_alert
states_array[states.attack] = scr_attack
//states_array[states.collision] = scr_enemy_collisiondetection

//movement
counter = 0

spd = 3

move_wander = 0

my_dir = irandom_range(0,360)
moveX = lengthdir_x(spd, my_dir)
moveY = lengthdir_y(spd, my_dir)

//health
hp = 100

Enemy_firingdelay = 10

timer = 4

detection = 0

detection_circle = 1500