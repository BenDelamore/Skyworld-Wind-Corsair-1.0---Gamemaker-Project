/// @description Insert description here
// You can write your code in this editor

draw_sprite(sWeapon_1_base,0,x,y)

image_speed = 0;

if firing_delay <= 15
{
	image_index = 0;
}
else
{
	image_index = 1;
}
draw_self()