/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,oPlayer)
{
	with (other)
	{
		var push_direction = point_direction(other.x,other.y,x,y)
		x += lengthdir_x(0.5,push_direction)
		y += lengthdir_y(0.5,push_direction)
	}
}