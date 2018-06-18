/// @description Insert description here
// You can write your code in this editor

if (global.pause)
{
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(0,0,guiWidth,guiHeight,0);
	draw_set_halign(fa_center);
	draw_set_font(fnt_health);
	draw_set_color(c_white);
	draw_set_alpha(1)
	draw_text(guiWidth/2,guiHeight/12,"game paused")
	draw_set_color(c_black)
}