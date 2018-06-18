
//if global.Weapon_Catapult = true
//{
#region //Weapon-Catapult Code
if oPlayer.image_xscale < 0
{
image_flipped = 180;
}
else
{
	image_flipped = 0;
}

x = oPlayer.x + lengthdir_x(-125, image_flipped); 
y = (oPlayer.y + lengthdir_y(-125, image_flipped))-25;

//image_angle = clamp(point_direction(x,y,mouse_x,mouse_y),0,360); 

firing_delay = firing_delay - 1;
recoil = max(0, recoil - 1);

if mouse_check_button(mb_right) && (firing_delay < 0)
{
	boulderspeed += 2.5
}

if boulderspeed >= max_boulderspeed {boulderspeed = max_boulderspeed}

if mouse_check_button_released(mb_right) && (firing_delay < 0)
{
	recoil = 59;
	firing_delay = 60;
	with (instance_create_layer(x,y,"projectiles_layer",ammo))
	{
		speed = (((oCatapult1.boulderspeed)/10 + (oPlayer.spd)));
	
		direction = (point_direction(x,y,mouse_x,mouse_y) + random_range(-3,3));
		image_angle = direction;
		
		oCatapult1.boulderspeed = 0
	}
}

#endregion

if oPlayer.hp <= 0
{
	instance_destroy()
}

//}