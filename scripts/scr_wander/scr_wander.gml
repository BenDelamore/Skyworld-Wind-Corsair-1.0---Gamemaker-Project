
//behaviour
	counter += 1
	
//transition triggers
if (counter >= room_speed * 3)
	{
		var change = choose(0,1);
		switch(change)
		{
			case 0: state = states.idle; break;
			case 1:
			move_wander = 1
			dir = irandom_range(0,359);
			counter = 0;
			break;
		}
	}

/*
if !not place_meeting(x,y,oEnemy_path)
{
	var pathX = oEnemy_path.x
	var pathY = oEnemy_path.y
	
	my_dir = point_direction(x,y,pathX,pathY)
}
*/

//Movement
if move_wander = 1
{
	
	spd = lerp(spd,random_range(0.5,1.5),0.1)
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
	x += lengthdir_x(spd,dir)
	y += lengthdir_y(spd,dir)
}

//Alert State Transition
if point_distance(x,y,oPlayer.x,oPlayer.y) <  1650 
	{
		if !collision_line(x,y,oPlayer.x,oPlayer.y,oSolid,true,false)
		{
			move_wander = 0
			state = states.alert; 
		}
	}

/*
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
	
	//sprite
	//image_xscale = sign(moveX);
	