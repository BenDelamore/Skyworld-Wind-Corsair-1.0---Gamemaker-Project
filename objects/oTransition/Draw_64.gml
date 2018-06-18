/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,oPlayer)
{
	if alpha < 1 
	{
		alpha += 0.02
	}
}
else
{
	if alpha > 0
	{
		alpha -= 0.02
	}
}

draw_set_alpha(alpha)
draw_set_font(fnt_Unzialish1)
draw_text((oController.guiWidth)/2,100,text)

draw_set_alpha(1)
