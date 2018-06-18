
//transition triggers
if !point_distance(x,y,oPlayer.x,oPlayer.y) < 1650 
{
	state = states.wander; 
}

if collision_line(x,y,oPlayer.x,oPlayer.y,oSolid,true,false)
{
	state = states.wander; 
}



if point_distance(x,y,oPlayer.x,oPlayer.y) < 1000
{
	state = states.attack; 
}
else //if (collision_circle(x,y, 1020, oPlayer, false, false))
{
	spd = lerp(spd,random_range(2.5,3.5),0.1)
	dir = point_direction(x,y, oPlayer.x, oPlayer.y)
	
//default settings  = mp_potential_settings(30,10,3,1)
	//mp_potential_settings(45,45,10,1)
	mp_potential_step_object(oPlayer.x,oPlayer.y,spd,oInvisible_wall)
}

/*
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

//sprite
//image_xscale = sign(moveX)
