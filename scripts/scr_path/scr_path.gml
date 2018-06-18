//Path Following

if state = states.path_following
{
	if (point_distance(x,y,oPlayer.x,oPlayer.y) < 1000)
	{
		path_end();
		state = states.alert
	}
	else if (path_index != set_path)
	{
		mp_potential_step_object(start_x,start_y,spd,oInvisible_wall);
	
		if (abs(x - start_x) < 3 && abs(y - start_y) < 3)
		{
			path_start(set_path,spd,path_action_continue,false);
		}
	}
	
}

