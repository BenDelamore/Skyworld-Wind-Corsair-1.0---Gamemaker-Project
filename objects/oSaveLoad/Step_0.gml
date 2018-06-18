/// @description Save/Load

#region //ctrl + S = SAVE GAME
if keyboard_check_pressed(vk_control) && keyboard_check_pressed(ord("S"))
{
	//create root list
	var root_list = ds_list_create();
	
	//for every instance, create a map
	with (oParent_SaveMe)
	{
		var map = ds_map_create();
		ds_list_add(root_list,map);
		ds_list_mark_as_map(root_list,ds_list_size(root_list)-1);
		
		var _obj = object_get_name(object_index);
		
		ds_map_add (map, "obj", _obj);
		ds_map_add(map, "x", x);
		ds_map_add(map, "y", y);
		
		ds_map_add(map, "image_index", image_index);
		ds_map_add(map, "layer", layer);
		//ds_map_add(map, "spd", spd);
		
	}
	
	ds_map_add(map, "_room", room)
	
	//wrap the root LIST up in a MAP!
	var wrapper = ds_map_create();
	ds_map_add_list(wrapper, "ROOT", root_list);
	
	//Save all of this to a string
	var _string = json_encode(wrapper);
	SaveStringToFile("savedgame.sav", _string)
	
	//Nuke the data, MAKE SURE TO DESTROY THE DATA
	ds_map_destroy(wrapper);
	
	show_debug_message("Game Saved!")
}
#endregion

/*
#region //ctr + L = Load Game
if keyboard_check_pressed(vk_control) && keyboard_check_pressed(ord("L"))
{
	with (oParent_SaveMe) instance_destroy();

	if (file_exists("savedgame.sav"))
	{
		var wrapper = LoadJSONFromFile("savedgame.sav");
		var _list = wrapper[? "ROOT"];
	
		for (var i = 0; i < ds_list_size(_list); i++)
		{
			var _map = _list[| i];
			
			var _room = map[? "_room"]
			room_goto(_room)
			
			var _obj = map[? "obj"];
			with (instance_create_layer(0,0,layer,asset_get_index(_obj)))
			{
				x = _map[? "x"];
				y = _map[? "y"];
				image_index = _map[? "image_index"];
				layer = _map[? "layer"];
			}
		}
		
		ds_map_destroy(wrapper);
		show_debug_message("Game Loaded!");
	}
}
#endregion
