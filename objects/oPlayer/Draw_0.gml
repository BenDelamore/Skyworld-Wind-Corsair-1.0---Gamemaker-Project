/// @descr Draw health/self
/*
if hp >= 1
{
	draw_set_font(fnt_health)
	draw_set_halign(fa_center)
	draw_set_color(c_black)
	draw_text(x-10,y-120,hp)
	
	draw_healthbar(x-30,y-100,x+10,y-92,hp,0,c_red,c_green,0,0,0)
}
*/
draw_self()

/*
if hp <= 0
{

	//(flame_frame+1) % sprite_get_number(spr_Flame);
	with draw_sprite(sExplosion,flame_frame,x,y)
	{
		image_speed = 0.9
		if image_index <=0
		{
			image_angle = random_range(0,360)
		}
		if image_index >= 12
		{
			image_speed = 0
		}
	}
}
else
{
	draw_self()
}
*/