if (global.pause) {exit;}

#region //run script movement
//script_execute(states_array[state]);
#endregion
/*
//Cheat Move code for collision bugs
if keyboard_check(vk_control) && mouse_check_button(mb_left)
{
	x = mouse_x
	y = mouse_y
}
*/
#region //----------Movement Inputs
#region //----------Keyboard Inputs
key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
key_up = keyboard_check(vk_up) or keyboard_check(ord("W"));
key_down = keyboard_check(vk_down) or keyboard_check(ord("S"));
#endregion

#region //----------Movement Values
if key_left {hspd -= 0.1}

if key_right {hspd += 0.1}

if key_up {vspd -= 0.1}

if key_down {vspd += 0.1}


//---------Max Speed
hspd = clamp(hspd, -maxhspd, maxhspd);
vspd = clamp(vspd, -maxvspd, maxvspd);
#endregion

#region //----------Acceleration
if (!key_up && !key_down)
{
    vspd-=(sign(vspd)/96);
}

if (!key_left && !key_right)
{
    hspd-=(sign(hspd))/96;
}
#endregion
#endregion

#region //----------Stopping Player from exiting room

var edgespeed1 = (distance_to_point(global.edge,y))/100
var edgespeed2 = (distance_to_point(x,global.edge))/100
var edgespeed3 = (distance_to_point(room_width - global.edge,y))/100
var edgespeed4 = (distance_to_point(x,room_height - global.edge))/100



//abs(sign(hspd))+

//,abs(hspd)

if x < global.edge
	{hspd += max(0,(edgespeed1/5))}
	
if x > room_width - global.edge
	{hspd -= max(0,(edgespeed3/5))}

//abs(sign(vspd))+

if y < global.edge
	{vspd += max(0,(edgespeed2/5))}

if y > room_height - global.edge
	{vspd -= max(0,(edgespeed4/5))}

/*
x = min(x, (room_width-global.edge));
x = max(x, (0+global.edge));
y = min(y, (room_height-global.edge));
y = max(y, (0+global.edge));

/*
if x =  room_width + 100
{
	x += sign(hspd + 0.02)
}
*/
#endregion

#region //----------Collision Code and Apply Movement

//horizontal
if (hspd != 0)
{
	if (place_meeting(x+hspd, y, oSolid))
	{
		if !audio_is_playing(sfx_crash_1)
		{
			audio_play_sound(sfx_crash_1,80,false)
			audio_sound_gain(sfx_crash_1,0.7,0)
		}
		
		if hspd > 2 || hspd < -2 
		{
			oPlayer.hp -= abs((hspd*2)^3);
		}
		//while (!place_meeting(x+sign(hspd), y, oSolid))
		//{
			//x+=sign(hspd);
		//}
	    hspd=0;
	}
x += hspd
}

//vertical
if (vspd != 0)
{
	if (place_meeting(x, y+vspd, oSolid))
	{
		if !audio_is_playing(sfx_crash_1)
		{
			audio_play_sound(sfx_crash_1,80,false)
			audio_sound_gain(sfx_crash_1,0.7,0)
		}

		
		if vspd > 2 || vspd < -2
		{
			oPlayer.hp -= abs((vspd*2)^3)
		}
		
	   // while (!place_meeting(x, y+sign(vspd), oSolid))
	   //{
	    //    y+=sign(vspd);
	   // }
	    vspd=0;
	}

y += vspd
}
#endregion

if hspd < 0.01 && hspd > -0.01 {hspd = 0}
if vspd < 0.01 && vspd > -0.01 {vspd = 0}

//spd = sqrt(hspd*hspd + vspd*vspd)
spd = point_distance(x,y,x+hspd,y+vspd)

#region//Engine Audio?
/*
if hspd > 0.1 || hspd < -0.1
{
	gear = abs(round(hspd*2))
	
	if !audio_is_playing(sfx_engine)
	{
		audio_play_sound(sfx_engine,80,true)
		audio_sound_gain(sfx_engine,0,0)
		audio_sound_gain(sfx_engine,0.5,1000)
	}
	
	if audio_is_playing(sfx_engine)
	{
		switch (gear)
	   {
		   case 1: audio_sound_pitch(sfx_engine, 0.5); break;
		   case 2: audio_sound_pitch(sfx_engine, 0.6); break;
		   case 3: audio_sound_pitch(sfx_engine, 0.75); break;
		   case 4: audio_sound_pitch(sfx_engine, 0.87); break;
		   case 5: audio_sound_pitch(sfx_engine, 1); break;
	   }
	}
}
else
{
	if audio_is_playing(sfx_engine)
	{
		audio_sound_gain(sfx_engine,0,500)
	}
	if audio_sound_get_gain(sfx_engine) <= 0
	{
		audio_stop_sound(sfx_engine)
	}	
}
*/
#endregion


#region //Smoke trail effect
/*
if hp < 85 && smoke = false
{
	with instance_create_layer(oPlayer.x-200,oPlayer.y+100,"player_layer",oParticle_smoke)
	{
		owner = oPlayer
	}
	smoke = true
}
else if hp >= 85 && smoke = true
{
	smoke = false
}
*/
#endregion

#region //----------Room Transition Collisions
var inst = instance_place(x,y,oTransition)
if (inst != noone && keyboard_check_released(vk_enter))
{
	with (oController)
	{
		if (!do_transition)
		{
			spawn_room = inst.target_room
			global.room_number = inst.next_level
			global.spawnX = inst.spawnX
			global.spawnY = inst.spawnY
			global.level_unlocked = inst.level_complete
			//spawnX = inst.spawnX
			//spawnY = inst.spawnY
			do_transition = true
		}
	}
}

#endregion

#region //----------Image Scaling
if hspd < -0.01 {image_xscale = -1}
else if hspd > 0.01 {image_xscale = 1}

#endregion

#region //----------Player Death
if hp <= 0
{
	oCameraTarget.shake = 15
	dead = true
}
	/*
	flame_frame += 0.2
	flame_frame = clamp(flame_frame,0,sprite_get_number(sExplosion)) 	
	repeat random(8)
	{
		instance_create_layer(x,y,"projectiles_layer",oSpark)
	}
	*/
if dead = true
{
	if death_timer <= 1
	{
		with instance_create_layer(x,y,"projectiles_layer",oExplosion)
		{
			image_angle = random_range(0,360)
			image_speed = 1
		}
	}
	image_alpha -= 0.25
	death_timer += 1
	if death_timer = 72
	{
		//room_restart()
	#region transition code???
		with (oController)
		{
			if (!do_transition)
			{
				other_transition = true
			}
		}
#endregion
	}
}
//	image_alpha -= 0.05

//if image_alpha = 0
//{
//	room_restart()
//}
#endregion
