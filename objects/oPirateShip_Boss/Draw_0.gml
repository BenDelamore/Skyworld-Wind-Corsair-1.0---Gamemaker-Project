/// @description Insert description here

draw_self();

if (flash > 0)
{
	flash -= 1;
	shader_set(shader_white_flash);
	draw_self();
	shader_reset();
}

/*
draw_text(x,y-150,hp)


//Other AI code
//draw_sprite_ext(sEnemy_Skyship_Boss,image_index,x,y,image_xscale,image_yscale,0,c_white,image_alpha)

/*
if hp < 0
{
	explosion_timer -= 1
	if explosion_timer <= 0
	{
			with draw_sprite(sExplosion,flame_frame,random_range(x+100,x-100),random_range(y+100,y-100))
			{
				image_speed = 1
				image_angle = random_range(0,360)
				if image_index >= 12 {image_speed = 0 image_index = 12}
			}
			explosion_timer = random_range(10,15)
	}
}
