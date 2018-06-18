
scr_BasicCollision_init(1)

instance_create_layer(x,y+20,"island_objects",oFloating_platform)

linked = instance_nearest(x,y,oFloating_platform)


//health
hp = 30

Enemy_firingdelay = 10

timer = 4


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

//Move Counters
counter = 0

move_wander = 0
