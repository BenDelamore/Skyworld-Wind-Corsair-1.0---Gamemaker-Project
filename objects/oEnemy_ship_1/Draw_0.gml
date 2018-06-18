/// @descr Draw Self/flash/hp text

draw_self();

if (flash > 0)
{
	flash -= 1;
	shader_set(shader_white_flash);
	draw_self();
	shader_reset();
}

/*
if hp >= 0
{
	draw_text(x,y-50,hp)
}

draw_text(x,y-80,mode)

/*
if hp < 0
{
	draw_sprite(sExplosion,flame_frame,x,y)
	if image_index <=0
	{
		image_angle = random_range(0,360)
	}
	if image_index >= 12
	{
		image_speed = 0
	}
}

draw_set_alpha(0.2);
draw_circle_color(x,y,detection_circle,c_red,c_red,1);

draw_set_alpha(1);