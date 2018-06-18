
if global.Weapon_Catapult = true
{
	draw_self()
}

image_speed = 0

if mouse_check_button(mb_right)
{
	var spd
	spd = boulderspeed
	draw_healthbar(oPlayer.x-10,oPlayer.y+20,oPlayer.x+20,oPlayer.y+25,spd,0,c_white,c_red,0,0,0)
}

if firing_delay >= 1
{
	var rot = firing_delay
	image_angle = initial_rotation - rot
}
else
{
	image_angle = initial_rotation
}

if image_flipped = 0
{
	image_xscale = 1
}
else
{
	image_xscale = -1
}

draw_sprite(sWeapon_2_base,0,x,y)



//draw_line(x,y,mouse_x,mouse_y)
