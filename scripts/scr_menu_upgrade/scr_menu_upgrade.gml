
switch (move_position)
{
	case 0: //continue
	{
		//room_goto(global.room_number);
		with (oController)
			{
				if (!do_transition)
				{
					spawn_room = global.room_number
					do_transition = true
				}
			}
		break;
	}
	
	case 1:
	{
		//HEALTH
		if global.playerpoints >= 5
		{
			global.player_health += 10
			global.playerpoints -= 5
			audio_play_sound(sfx_coin_pickup_2,100,false)
		}
		break;
	}
	
	case 2:
	{
		//SPEED
		if global.playerpoints >= 15 && global.maxhspd < 6
		{
			global.maxhspd += 1
			global.maxvspd += 1
			global.engine_level += 1
			global.playerpoints -= 15
			audio_play_sound(sfx_coin_pickup_2,100,false)
		}
		break;
	}
	
	case 3:
	{
		if global.playerpoints >= 50 && global.catapult_ammo != oProjectile_explosive
		{
			if global.catapult_ammo = oProjectile_Boulder
			{
				global.catapult_ammo = oProjectile_explosive
			}
			else
			{
				global.catapult_ammo = oProjectile_Boulder
			}
			global.Weapon_Catapult = true;
			global.playerpoints -= 50
			audio_play_sound(sfx_coin_pickup_2,100,false)
		}
			break;
	}
	
	case 4:
	{
		if global.playerpoints>= 30 and global.Weapon_Ballistae2 = false
		{
			global.Weapon_Ballistae2 = true
			global.Weapon_Ballistae = false
			global.playerpoints -= 30
			audio_play_sound(sfx_coin_pickup_2,100,false)
		}
			break;

	}
	
	case 5: //Back
	{
		//room_goto(room_menu);
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