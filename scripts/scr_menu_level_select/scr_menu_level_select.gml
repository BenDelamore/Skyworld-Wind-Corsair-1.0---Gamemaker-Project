
switch (move_position)
{
	case 0: 
	{
		global.room_number = room_level0
		global.spawnX = 0
		global.spawnY = 1300
		//room_goto(room_level1);
		with (oController)
			{
				if (!do_transition)
				{
					spawn_room = room_level0
					do_transition = true
				}
			}
		break;
	}
	case 1:
	{
		global.room_number = room_level1
		global.spawnX = 0
		global.spawnY = 1300
		//room_goto(room_level2)
		with (oController)
			{
				if (!do_transition)
				{
					spawn_room = room_level1
					do_transition = true
				}
			}
		break;
	}
	case 2:
	{
		global.room_number = room_level2
		global.spawnX = 0
		global.spawnY = 1000
		//room_goto(room_level3)
		with (oController)
			{
				if (!do_transition)
				{
					spawn_room = room_level2
					do_transition = true
				}
			}
		break;
	}
	case 3:
	{
		if global.level_unlocked = room_level0
		{
			global.room_number = room_Boss_level
			global.spawnY = 1000
			//room_goto(room_testing)
			with (oController)
				{
					if (!do_transition)
					{
						spawn_room = room_Boss_level
						do_transition = true
				}
			}
		}
		break;
	}
	case 4:
	{
		//room_goto(room_menu)
		with (oController)
			{
				if (!do_transition)
				{
					spawn_room = room_menu
					do_transition = true
				}
			}
		break;
	}
	default: break;
}
