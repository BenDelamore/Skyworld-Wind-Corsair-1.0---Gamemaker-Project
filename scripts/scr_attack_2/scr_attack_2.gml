//behaviour
#region //shooting/charge!

	charge_timer += 1

//Set Direction
	if spd <= 0.2 //charge_timer >= 45 && charge_timer <= 55	
	{
		dir = point_direction(x,y,oPlayer.x,oPlayer.y)
	}
	
//Charge!
	if charge_timer >= 45
	{
		charge = 1
		//charge_timer = 0
	}

//Accelerate
	if charge = 1
	{
		spd += 0.2
		//mp_potential_step(oPlayer.x,oPlayer.y,spd,0)
	}

//Charging for too long - reset
	if charge_timer >= 120
	{
		charge = 0	
		charge_timer = 0
	}
	
//Decellerating
	if charge = 0
	{
		if spd >= 0
		{
			spd = lerp(spd,0,0.1)
		}
	}

//Apply Movement
	x += lengthdir_x(spd,dir)
	y += lengthdir_y(spd,dir)

#endregion

//transition triggers
if (!collision_circle(x,y, 1000, oPlayer, false, false)) && charge = 0
{
	if spd = 0
	{
		state = states.alert; 
	}
}
