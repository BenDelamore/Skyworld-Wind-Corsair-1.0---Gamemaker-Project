/// @description Insert description here
// You can write your code in this editor

if hp < 0
{
	draw_sprite(sExplosion,image_index,x,y)
}
else
{
	draw_self()
}

draw_set_alpha(0.3)
draw_circle_color(x,y,1000,c_red,c_red,false)
