
switch (move_position)
{
	case 0: //--------Start
	{
		//room_goto_next()
		//ADD SAVE GAME OVERWRITE HERE
		#region //Reset Game
		//Player variables
		global.max_hp = 100;
		global.hp = 100;
		global.player_health = 200;

		global.playerpoints = 50;
		global.coins_collected = 0;

		global.engine_level = 1;
		global.maxhspd = 4;
		global.maxvspd = 4;

		global.spawnX = 0
		global.spawnY = 1300

		//Weapons 1
		global.Weapon_Ballistae = true;
		global.Weapon_Catapult = false;
		global.Weapon_Ballistae2 = false;

		//Weapons 2 for upgrade system
		global.weapon_1 = global.Weapon_Ballistae;
		global.weapon_2 = false;

		global.catapult_ammo = false

		//Current level
		global.room_number = room_level0;

		global.level_unlocked = room_level0
		#endregion
		
		global.spawnX = 960
		global.spawnY = 540
#region All other code attempts
		#region First attempt ----- USING THIS ONE CURRENTLY
		//Add Save game OVERWRITE code
		with (oController)
			{
				if (!do_transition)
				{
					spawn_room = room_controls
					do_transition = true
				}
			}
		
		#endregion
		#region Second attempt
		/*
		//handle black/white fade/room transition
		white_alpha += 0.05
		if (white_alpha >= 1)
		{
			room_goto(room_controls)
		}
		//drawing black/white fade
		draw_set_alpha(white_alpha)
		draw_rectangle_color(0,0,guiWidth,guiHeight, c_white, c_white, c_white, c_white, 0)
		draw_set_alpha(1)
		*/
		#endregion
		#endregion
		break;
	}
	case 1: //--------Continue
	{
		//Add LOAD GAME functionality here.
		//room_goto(global.room_number)		
#region All other code attempts
		#region First Code Attempt
		
		with (oController)
			{
				if (!do_transition)
				{
					spawn_room = global.room_number
					do_transition = true
				}
			}
		
		#endregion
		#region Second attempt
		/*
		//handle black/white fade/room transition
		with (oController)
		{
			if white_alpha < 1
			{
				t2 += 1/60
				white_alpha = ease("easeinoutcubic",t2) //* amplify + offest;
			}
		}
		if (oController.white_alpha >= 1)
		{
			script_execute(scr_loadgame())
		}
		*/
		#endregion
		#endregion		
		break;
	}
	case 2: //--------Upgrades
	{
		//room_goto(room_upgrade)
#region	Other Code Attempt	
		with (oController)
			{
				if (!do_transition)
				{
					spawn_room = room_upgrade
					do_transition = true
				}
			}
#endregion		
		break;
	}
	case 3: //Level Select
	{
		//room_goto(room_level_select)
#region Other code
		with (oController)
			{
				if (!do_transition)
				{
					spawn_room = room_level_select
					do_transition = true
				}
			}
#endregion
		break;
	}
	case 4:
	{
		game_end();
	}
	default: break;
}
