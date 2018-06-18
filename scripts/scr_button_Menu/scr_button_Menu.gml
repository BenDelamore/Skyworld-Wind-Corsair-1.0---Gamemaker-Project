
switch (move_position)
	{
		//Start
		case 0: 
		{
			with (oMenu){
				move_position = 0
				push = 1
			}
			break;
		}
		//Continue
		case 1:
		{
			with (oMenu){
				move_position = 1
				push = 1
			}
			break;
		}
		case 2:
		{
			with (oMenu){
				move_position = 2
				push = 1
			}
			break;
		}
		case 3:
		{
			with (oMenu){
				move_position = 3
				push = 1
			}
			break;
		}
		//End Game
		case 4:
		{
			game_end();
		}
		
		default: break;
	}
