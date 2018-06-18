//Boss Ship Code

if (global.pause) {exit;}

#region //Wander
if mode = "wander"
{
	speed = 2

	if ceil(random(100)) = true
	{
		direction = random(360)
	}

	dir = direction
	
	if collision_circle(x,y,1400,oPlayer,0,0)
	{
		mode = "chase"
	}
}
#endregion

#region //Chase Player
if mode = "chase"
{
	speed = 0
	
	//default settings  = mp_potential_settings(30,10,3,1)
	mp_potential_settings(45,45,5,0)
	//mp_linear_step(oPlayer.x,oPlayer.y,6,0)
	mp_potential_step(oPlayer.x,oPlayer.y,spd,0)
	dir = direction
	
	if !collision_circle(x,y,2000,oPlayer,0,0)
		{
			mode = "wander"
		}

	if collision_circle(x,y,800,oPlayer,0,0)
	{
		mode = "shoot"
	}
}
#endregion

#region //shooting
if mode = "shoot"
{
	direction  = point_direction(x,y,oPlayer.x,oPlayer.y)
	dir = direction
	
		if bullet_timer < 1
	{
		bullet_timer += 0.025
	}
	
	if bullet_timer >= 1
	{
		bullet = instance_create_layer(x-25,y,"projectiles_layer",oEnemy_projectile)
		bullet.direction = (dir + ceil(random(20)))
		bullet.speed = 15
		
		bullet_timer = 0
	}
	
	if bullet_timer_2 < 1
	{
		bullet_timer_2 += 0.005
	}
	
		if bullet_timer_2 >= 1
	{
		bullet = instance_create_layer(x+40,y-15,"projectiles_layer",oEnemy_Projectile_2)
		bullet.direction = dir + ceil(random(5))
		bullet.speed = 12
		
		bullet_timer_2 = 0
	}

	counter += 1

	if (counter >= room_speed * 3)
	{
		var change = choose(0,1);
		switch(change)
		{
			case 0: counter = 0	
					break;
			case 1:	repeat(24)
					{
					dir +=15
					bullet = instance_create_layer(x-5,y,"projectiles_layer",oEnemy_projectile)
					bullet.direction = dir + random(2)
					bullet.speed = 20	
					counter = 0
					}	
					break;
		}
	}
	
	
	if !collision_circle(x,y,700,oPlayer,0,0)
	{
		mode = "chase"
	}
}
#endregion

#region //knockback mode
if mode = "knockback"
{
	if knockback_timer >= 1
	{
		mode = "chase"
	}
	
	knockback_timer += 1
}
#endregion

#region //Room Borders
x = max(x, global.edge);
x = min(x, room_width-global.edge);
y = max(y, global.edge);
y = min(y, room_height-global.edge);
#endregion

#region //death
if hp <= 0
{
	if !audio_is_playing(sfx_boss_explosion)
	{
		audio_play_sound(sfx_boss_explosion,200,false)
	}
	bullet_timer = -10000
	bullet_timer_2 = -10000
	flame_frame += 0.2
	#region Old sparks/flame_frame code
	/*
	flame_frame = clamp(flame_frame,0,sprite_get_number(sExplosion)) 	
	if flame_frame >= sprite_get_number(sExplosion)
	{
		flame_frame = 0	
	}
	*/
	
//	repeat random(10)
//	{
//		instance_create_layer(x,y,"projectiles_layer",oSpark)
//	}
	#endregion
	if flame_frame <= 1
	{
		repeat random(3)
		{
			instance_create_layer(random_range(x-50,x+50),random_range(y-50,y+50),"projectiles_layer",oCoin)
		}
	}
	
	//Explosion Code!!!
	explosion_timer -= 1
	if explosion_timer <= 0
	{
		with instance_create_layer(random_range(x-50,x+50),random_range(y-50,y+50),"projectiles_layer",oExplosion)
		{
			image_angle = random_range(0,360)
			image_speed = 1
		}
		explosion_timer = random_range(10,15)
	}
	timer -= 1
	
	if timer < 0
	{
		instance_destroy()
		with (oController)
		{
			global.spawnX = 0
			global.spawnY = 540
			if (!do_transition)
			{
				spawn_room = room_levelFinish
				do_transition = true
			}
		}
	}
}

#endregion