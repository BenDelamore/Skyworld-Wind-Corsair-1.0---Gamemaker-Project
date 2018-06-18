//State Machine
enum states
{
	idle,
	wander,
	alert,
	attack,
	path_following
}

/*
//Pathfinding grid
var cell_size = 64;

var hcells = room_width div cell_size;
var vcells = room_height div cell_size;

global.ai_grid = mp_grid_create(0,0,hcells,vcells,cell_size,cell_size);
//global.path = path_add();

mp_grid_add_instances(global.ai_grid,oSolid,true);

//scr_define_path();
*/
/*
enum player_states
{
	move,
	attack
}
*/

guiWidth = display_get_gui_width();
guiHeight = display_get_gui_height();

white_alpha = 1;

spawn_room = -1;

do_transition = false

other_transition = false

//easings variables
t = 0
t2 = 0
amplify = 1
offset = 0


//player_health = global.player_health

//global.room_number = layer_get_target_room()

smoke = false

instance_create_depth(mouse_x,mouse_y,-10,oMouse_cursor)
