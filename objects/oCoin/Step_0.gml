/// @description Insert description here
// You can write your code in this editor

if (global.pause) {exit;}

gravity_direction = 270


if (collision_circle(x,y, 300, oPlayer, false, false))
{
	direction = point_direction(x,y,oPlayer.x,oPlayer.y)
	speed += 0.1
}
else
{
	if place_free(x,y+1)
	{
		gravity = 0.003
	}
	else
	{
		gravity = 0
	}

	if speed > 0.05
	{
		friction = 0.01
	}
	else
	{
		friction = 0
	}
}