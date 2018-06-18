/// @description Insert description here
// You can write your code in this editor

if button_pressed = true
{
	draw_set_halign(fa_center)
	draw_text(x,y-30,"Button Pressed")
}

if hover = true
{
	image_alpha = 0.5
}
else
{
	image_alpha = 1
}

draw_self()