
player_health = (global.player_health)
player_speed = (global.maxhspd)	
if global.Weapon_Catapult = true
{
	if global.catapult_ammo = oProjectile_Boulder
	{
		player_catapult = "Ammo = Boulder"
	}
	else if global.catapult_ammo = oProjectile_explosive
	{
		player_catapult = "Ammo = Explosive"
	}
}
else
{
	player_catapult = "Locked"
}
if global.Weapon_Ballistae = true
{
	player_ballistae = "Level 1"
}
else
{
	player_ballistae = "Level 2"
}

menu [0] = " "	
menu [1] = player_health		
menu [2] = player_speed
menu [3] = player_catapult
menu [4] = player_ballistae
menu [5] = " "

var move = 0
move -= max(keyboard_check_pressed(vk_up), keyboard_check_pressed(ord("W")), 0)
move += max(keyboard_check_pressed(vk_down), keyboard_check_pressed(ord("S")), 0)

if move != 0
{
	move_position += move 
	if move_position < 0	{move_position = array_length_1d(menu) - 1}
	if move_position > array_length_1d(menu) - 1	{move_position = 0}
}

/*
var push;
push = max(keyboard_check_released(vk_enter), keyboard_check_released(vk_space), 0)

if push = 1	{scr_menu_upgrade()}


