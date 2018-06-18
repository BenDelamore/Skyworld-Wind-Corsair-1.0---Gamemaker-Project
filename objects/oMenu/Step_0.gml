
var move = 0
move -= max(keyboard_check_pressed(vk_up), keyboard_check_pressed(ord("W")), 0)
move += max(keyboard_check_pressed(vk_down), keyboard_check_pressed(ord("S")), 0)

if move != 0
{
	move_position += move 
	if move_position < 0	{move_position = array_length_1d(menu) - 1}
	if move_position > array_length_1d(menu) - 1	{move_position = 0}
}

if push_timer >= 0 
{
	push_timer -= 1
}

if keyboard_check_released(vk_enter) && push_timer <= 0
{
	push = 1
	push_timer = 60
	click_sound = 1
}
//push = max(keyboard_check_released(vk_enter), 0)

if push = 1	
{
	if click_sound = 1
	{
		if !audio_is_playing(sfx_click)
		audio_play_sound(sfx_click,50,false)
		audio_sound_gain(sfx_click,1,0)
		click_sound = 0
	}
	scr_menu()
}

