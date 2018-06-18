/// @description ALL THE CODE!!

if (global.pause) {exit;}

//script_execute(states_array[state]);


if collision_circle(x,y,detection_circle,oPlayer,0,0)
{
	detection = 1
}
else
{
	detection = 0
}

if Enemy_firingdelay > 0 {Enemy_firingdelay -= 1}

if collision_circle(x,y,800,oPlayer,false,0)
{
	if Enemy_firingdelay <= 0
	{
		with (instance_create_layer(x, y - 5, "projectiles_layer", oEnemy_projectile))
			{
				speed = 8;
				direction = point_direction(x,y,(oPlayer.x + 5),(oPlayer.y - 15))
				//other.image_angle = other.direction;

			//oEnemy_projectile.creator = id;
			//oEnemyprojectile.direction = point_direction(x,y,oPlayer.x,oPlayer.y)
			//oEnemy_projectile.image_angle = direction;
			}
		Enemy_firingdelay = 60
	}
}

#region //health drop
if oPlayer.hp < 50
{
	spawn_health = choose(true,false)
}

if oPlayer.hp < 30 {spawn_health = true}
#endregion

#region //death
if hp <= 0
{
	bullet_timer = -1000
	flame_frame += 0.2
	
	
	if spawn_health = true
	{
		instance_create_layer(x,y,"player_layer",oHealth_Drop)
		spawn_health = false
	}
	
	if flame_frame <= 0.4
	{
		repeat random(4)
		{
			instance_create_layer(x,y,"projectiles_layer",oCoin)
		}
	}
	//Explosion Code!!!	
	if death_timer <= 1
	{
		with instance_create_layer(x,y,"projectiles_layer",oExplosion)
		{
			image_angle = random_range(0,360)
			image_speed = 1
		}
	}
	image_alpha -= 0.25	

	death_timer += 1	
	if death_timer >= 2 //(sprite_get_number(sExplosion) * 5)
	{
		with linked
		{
			instance_destroy()	
		}
		instance_destroy()
	}
}
#endregion
