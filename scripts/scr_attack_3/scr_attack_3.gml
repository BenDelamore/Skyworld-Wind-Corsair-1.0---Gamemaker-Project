//behaviour
if !place_meeting(lengthdir_x(spd,dir),lengthdir_y(spd,dir), oInvisible_wall)
{
dir = point_direction(oPlayer.x, oPlayer.y,x,y)+90
}
else if !place_meeting(lengthdir_x(spd,dir),lengthdir_y(spd,dir), oInvisible_wall)
{
	dir = point_direction(oPlayer.x,oPlayer.y,x,y)-90
}
spd = lerp(spd,random_range(1,1.5),0.1)
	
x += lengthdir_x(spd,dir)
y += lengthdir_y(spd,dir)
#region
/*
	if moveX >= 3
	{
		moveX = lengthdir_x(3, my_dir);
		moveY = lengthdir_y(3, my_dir);
	}
	else
	{
		moveX += lengthdir_x(spd, my_dir);
		moveY += lengthdir_y(spd, my_dir);
	}
*/
#endregion

if Enemy_firingdelay <= 0
{
	with (instance_create_layer(x - 15, y - 10, "projectiles_layer", oEnemy_Projectile_2))
		{
			speed = (8 + (lengthdir_x(other.spd,other.dir)));
			direction = point_direction(x,y,(oPlayer.x + 5),(oPlayer.y - 15))
			//other.image_angle = other.direction;

		//oEnemy_projectile.creator = id;
		//oEnemyprojectile.direction = point_direction(x,y,oPlayer.x,oPlayer.y)
		//oEnemy_projectile.image_angle = direction;
		}
	Enemy_firingdelay = 120
}


//transition triggers
if (!collision_circle(x,y, 1000, oPlayer, false, false))
{
	state = states.alert; 
}
/*
if Enemy_firingdelay > 0
{
	state = states.alert
}
