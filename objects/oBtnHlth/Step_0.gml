/// @description Insert description here
// You can write your code in this editor

if position_meeting(mouse_x,mouse_y,id)//instance_position(mouse_x,mouse_y,oButton)
{
	hover = true	
	if instance_exists(oMenu_Upgrade)
	{
	oMenu_Upgrade.move_position = move_position
	}
}
else
{
	hover = false
}

if position_meeting(mouse_x,mouse_y,self)
{
	if mouse_check_button_released(mb_left) and button_timer = 0 and global.playerpoints >= 5
	{
		button_pressed = true
		button_timer = 60
		click_sound = 1
		
		scr_menu_upgrade()
		/*
		global.room_number = room_level0
		global.spawnX = 300
		global.spawnY = 1300
		
		with (oController)
			{
				if (!do_transition)
				{
					spawn_room = room_level0
					do_transition = true
				}
			}
		
		if instance_exists(oMenu)
		{
			with oMenu
			{
				move_position = 0
				push = 1
			}
		}
		*/
		//script_execute(button_array[button_action])
	}
}

#region //button timer
if button_timer > 0
{
	button_timer -= 1
}

if button_timer = 0
{
	button_pressed = false
}
#endregion

if click_sound = 1
{
	if !audio_is_playing(sfx_click)
	audio_play_sound(sfx_click,50,false)
	audio_sound_gain(sfx_click,1,0)
	click_sound = 0
}
