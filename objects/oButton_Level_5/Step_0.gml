/// @description Insert description here
// You can write your code in this editor

if position_meeting(mouse_x,mouse_y,id)//instance_position(mouse_x,mouse_y,oButton)
{
	if instance_exists(oMenu_level_select)
	{
	oMenu_level_select.move_position = move_position
	}
	hover = true
}
else
{
	hover = false
}

if position_meeting(mouse_x,mouse_y,self)
{
	if mouse_check_button_released(mb_left) and button_timer = 0
	{
		button_pressed = true
		button_timer = 60
		
		scr_menu_level_select()
		
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

if button_pressed = true
{
	if !audio_is_playing(sfx_click)
	audio_play_sound(sfx_click,50,false)
	audio_sound_gain(sfx_click,1,0)
}

