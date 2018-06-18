/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,oEnemy)
{
	with (other)
	{
		var push_direction = point_direction(other.x,other.y,x,y)
		x += lengthdir_x(4,push_direction)
		y += lengthdir_y(4,push_direction)
	}
}