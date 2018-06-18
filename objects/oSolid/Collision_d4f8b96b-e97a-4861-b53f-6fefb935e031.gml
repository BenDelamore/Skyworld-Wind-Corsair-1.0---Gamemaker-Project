/// @description Insert description here
// You can write your code in this editor
//scr_BasicCollision(other)

if place_meeting(x,y,oEnemy)
{
	with (other)
	{
		var push_direction = point_direction(other.x,other.y,x,y)
		x += lengthdir_x(2,push_direction)
		y += lengthdir_y(2,push_direction)
	}
}