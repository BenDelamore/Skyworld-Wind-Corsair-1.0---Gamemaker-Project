#region //----------Keyboard Inputs
key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
key_up = keyboard_check(vk_up) or keyboard_check(ord("W"));
key_down = keyboard_check(vk_down) or keyboard_check(ord("S"));

//-----reset variables
//hspd = 0;
//vspd = 0;

//----------Movement
if key_left 
{
	hspd -= 0.1
	image_xscale = -1
}

if key_right 
{
	hspd += 0.1
	image_xscale = 1
}

if key_up {vspd -= 0.1}

if key_down {vspd += 0.1}

//---------Max Speed
hspd = clamp(hspd, -maxhspd, maxhspd);
vspd = clamp(vspd, -maxvspd, maxvspd);

//---------friction/acceleration?
if (!key_up && !key_down)
{
    vspd-=(sign(vspd)/96);
}

if (!key_left && !key_right)
{
    hspd-=(sign(hspd))/96;
}
#endregion

//-----------Collision Code and Apply Movement

//horizontal
if (hspd != 0)
{
	if (place_meeting(x+hspd, y, oSolid))
	{
		if hspd > 0.2 || hspd < -0.2
		{
			oPlayer.hp -= abs(hspd*3)
		}
	    
		while (!place_meeting(x+sign(hspd), y, oSolid)){
	        x+=sign(hspd);
	    }
	    hspd=0;
	}

x += hspd
}

//vertical
if (vspd != 0)
{
	if (place_meeting(x, y+vspd, oSolid))
	{
		if vspd > 0.2 || vspd < -0.2
		{
			oPlayer.hp -= abs(vspd*3)
		}
		
	    while (!place_meeting(x, y+sign(vspd), oSolid)){
	        y+=sign(vspd);
	    }
	    vspd=0;
	}

y += vspd
}


#region //Obsolete Code
//Direction scaling
//image_xscale = direction
//if hspd >= 0.1 ^^ hspd <= -0.1
//{
//	image_xscale = sign(hspd)
//}
//else {image_xscale = 1}

//----------Apply Movement

//x += hspd
//y += vspd



//hspd = (key_right - key_left)

//vspd = (key_down - key_up)

//moveX += (1 + hspd)
//moveY += (1 + vspd)


//if (speed>10) speed = 10;


//if (speed) > 0
//   {
//   friction = 0.25;
//   }
//else
//   {
//   friction = 0;
//   }

#endregion
