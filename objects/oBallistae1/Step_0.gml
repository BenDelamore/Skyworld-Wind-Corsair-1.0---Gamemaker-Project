//x = oPlayer.x+64
//y = oPlayer.y+2

/*
if oPlayer.hspd <= -0.1
{
	x = oPlayer.x - 64
	y = oPlayer.y - 2
}
else
{
	x = oPlayer.x + 64
	y = oPlayer.y - 2	
}
*/
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


if (mouse_check_button(mb_left)) && (firing_delay < 0)
{
	recoil = 59;
	firing_delay = firing_delay_max;
	with (instance_create_layer(x,y,"projectiles_layer",oProjectile))
	{
		speed = (other.projectile_speed)// + (oPlayer.spd));
		
		direction = (other.image_angle + random_range(-3,3));
		image_angle = direction;
	}
}
