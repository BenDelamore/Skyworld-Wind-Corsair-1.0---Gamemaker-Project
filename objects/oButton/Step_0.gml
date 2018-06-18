/// @description Insert description here
// You can write your code in this editor

if position_meeting(mouse_x,mouse_y,id)//instance_position(mouse_x,mouse_y,oButton)
{
	if instance_exists(oMenu)
	{
	oMenu.move_position = move_position
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
		script_execute(button_array[button_action])
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
	//do something????
}
