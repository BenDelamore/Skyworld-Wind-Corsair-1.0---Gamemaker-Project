/// @description Insert description here
// You can write your code in this editor

image_speed = 0;

draw_self()

if hover = true && global.Weapon_Ballistae2 != true
{
	image_index = 0;
	//alpha += 0.1
}
else if global.Weapon_Ballistae2 = true
{
	image_index = 2
	//alpha -= 0.1
}
else
{
	image_index = 1;
}

//if alpha > 0
//{
//	draw_set_alpha(alpha)
//	draw_sprite(sBtnBlsta,0,x,y)
//}

//draw_set_alpha(1)

/*
if hover = true
{
	image_index = 0
}
else
{
	image_index = 1
}

if button_pressed = true
{
	image_index = 2
}

draw_self()