
//behaviour
	counter += 1;
	move_wander = 0
	
//transition triggers
if(counter >= room_speed * 3)
	{
		var change = choose(0,1);
		switch(change)
		{
			case 0: state = states.wander; break;
			case 1: counter = 0; break;
		}
	}

if point_distance(x,y,oPlayer.x,oPlayer.y) <  1650 
	{
		if !collision_line(x,y,oPlayer.x,oPlayer.y,oSolid,true,false)
		{
			state = states.alert; 
		}
	}


//return to stationary
	if spd > 0 {spd = lerp(spd,0,0.1)}

	x += lengthdir_x(spd,dir)
	y += lengthdir_y(spd,dir)
	
#region
/*
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
*/
#endregion


//sprite
	//sprite_index = s_enemy_idle
	//image_xscale = sign(moveX);


