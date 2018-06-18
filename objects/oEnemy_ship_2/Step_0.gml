/// @description ALL THE CODE!!

if (global.pause) {exit;}

script_execute(states_array[state]);

if Enemy_firingdelay > 0 {Enemy_firingdelay -= 1}

#region //Modes Stuff
/*
#region //Path Following
if mode = "patrol"
{
	if (point_distance(x,y,oPlayer.x,oPlayer.y) < 1000)
	{
		path_end();
		//mp_potential_step_object(player_x,player_y,spd,oSolid);
		mode = "chase"
	}
	else if (path_index != set_path)
	{
		mp_potential_step(start_x,start_y,spd,false);
	
		if (abs(x - start_x) < 3 && abs(y - start_y) < 3)
		{
			path_start(set_path,spd,path_action_continue,false);
		}
	}
	
}
#endregion

#region //idle
if mode = "idle"
{
	counter += 1
		
	move_wander = 0
	if (counter >= room_speed * 3)
	{
		var change = choose(0,1);
		switch(change)
		{
			case 0: 
				counter = 0
				break;
			case 1:
				mode = "wander";
				counter = 0
				break;
			break;
		}
	}
}
#endregion

#region //Wander
if mode = "wander"
{
	counter += 1
	
	spd = lerp(spd,random_range(0.5,1.5),0.1)

	//transition triggers
	if (counter >= room_speed * 3)
	{
		var change = choose(0,1);
		switch(change)
		{
			case 0: 
				mode = "idle";
				break;
			case 1:
				move_wander = 1
				dir = irandom_range(0,359);
				counter = 0;
			break;
		}
	}
	if move_wander = 1
	{
		x += lengthdir_x(spd,dir)
		y += lengthdir_y(spd,dir)
	}

	if collision_circle(x,y,1000,oPlayer,0,0)
	{
		mode = "chase"
	}
	
	if set_path != noone
	{
		mode = "patrol"
	}
}
#endregion

#region //Chase Player
if mode = "chase"
{
	spd = lerp(spd,random_range(2.5,3.5),0.1)
	
	//default settings  = mp_potential_settings(30,10,3,1)
	//mp_linear_step(oPlayer.x,oPlayer.y,6,0)
	//mp_potential_step_object(oPlayer.x,oPlayer.y,spd,oSolid)
	mp_potential_step_object(oPlayer.x,oPlayer.y,spd,oInvisible_wall)
	
	//mp_grid_path(global.ai_grid,path,x,y,xx,yy,1);
	//path_start(path, spd, path_action_stop, 0)
	//alarm[0] = 0
	
	if !collision_circle(x,y,1200,oPlayer,0,0)
		{
			path_end();
			mode = "wander"
		}

	if collision_circle(x,y,500,oPlayer,0,0)
	{
		path_end();
		mode = "shoot"
	}
}
#endregion

#region //shooting
if mode = "shoot"
{
	spd = lerp(spd,0,0.1)
	x += lengthdir_x(spd,dir)
	y += lengthdir_y(spd,dir)
	
	dir  = point_direction(x,y,oPlayer.x,oPlayer.y) + 90
//	dir = point_direction(x,y,random_range(oPlayer.x + 5,oPlayer.x - 5),random_range(oPlayer.y - 5,oPlayer.y + 5))
	
	if bullet_timer >= 1
	{
/*
		bullet = instance_create_layer(x,y,"projectiles_layer",oEnemy_projectile)
		bullet.direction = dir
		bullet.speed = 15
////////////
		with (instance_create_layer(x - 15, y - 10, "projectiles_layer", oEnemy_projectile))
		{
			speed = 12;
			direction = point_direction(x,y,random_range(oPlayer.x + 5,oPlayer.x - 5),random_range(oPlayer.y - 5,oPlayer.y + 5))
		}
		bullet_timer = 0
	}
	
	if bullet_timer < 1
	{
		bullet_timer += 0.02
	}
	
	if !collision_circle(x,y,500,oPlayer,0,0)
	{
		mode = "chase"
	}
}
#endregion
*/
#endregion

#region //image direction
if x < oPlayer.x+20
{
	image_xscale = -1
}
else if x > oPlayer.x-20
{
	image_xscale = 1
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
/*
x = max(x, global.edge);
x = min(x, room_width-global.edge);
y = max(y, global.edge);
y = min(y, room_height-global.edge);
*/

var edgespeed1 = (distance_to_point(global.edge,y))/1000
var edgespeed2 = (distance_to_point(x,global.edge))/1000
var edgespeed3 = (distance_to_point(room_width - global.edge,y))/1000
var edgespeed4 = (distance_to_point(x,room_height - global.edge))/1000

if x < global.edge
	{
		spd += max(0,(edgespeed1/5))
		x += lengthdir_x(spd,point_direction(x,y,global.edge,y))
	}
	
if x > room_width - global.edge
	{
		spd += max(0,(edgespeed3/5))
		x += lengthdir_x(spd,point_direction(x,y,(room_width-global.edge),y))
	}

//abs(sign(vspd))+

if y < global.edge
	{
		spd += max(0,(edgespeed2/5))
		y += lengthdir_y(spd,point_direction(x,y,x,global.edge))
	}

if y > room_height - global.edge
	{
		spd += max(0,(edgespeed4/5))
		y += lengthdir_y(spd,point_direction(x,y,x,(room_height-global.edge)))
	}

#endregion

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
	
	/*
	flame_frame = clamp(flame_frame,0,sprite_get_number(sExplosion)) 	
	repeat random(10)
	{
		instance_create_layer(x,y,"projectiles_layer",oSpark)
	}
	*/
	if flame_frame <= 0.4
	{
		repeat random(2)
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
		instance_destroy()
	}
}
#endregion
