var sx = self.x;
var sy = self.y;
var fx = oPlayer.x;
var fy = oPlayer.y;

if !mp_grid_path(global.ai_grid,global.path,sx,sy,fx,fy,true)
{
	show_message("NO PATH FOUND!");
	return false;
}
else
{
	path_set_kind(global.path, 1);
	path_set_precision(global.path, 8);
	return true;
}


//plan(target_x, target_y)
target_x = argument0;
target_y = argument1;

mp_grid_path(global.ai_grid,path,x,y,target_x,target_y,true);
path_start(path,spd,path_action_stop,true);
