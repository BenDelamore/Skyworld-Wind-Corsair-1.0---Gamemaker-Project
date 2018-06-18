/// @description Insert description here

if oPlayer.image_xscale < 0
{
image_flipped = 180;
}
else
{
	image_flipped = 0;
}

x = oPlayer.x + lengthdir_x(130, image_flipped); 
y = (oPlayer.y + lengthdir_y(130, image_flipped))+35;


if (global.pause) {exit;}

image_angle = point_direction(x,y,mouse_x,mouse_y); 

if image_angle < 270 && image_angle > 90
{
	image_yscale = -1
}
else
{
	image_yscale = 1
}

firing_delay -= 1;
recoil = max(0, recoil - 1);

if oPlayer.hp <= 0
{
	instance_destroy()
}
