
script_execute(states_array[state]);

if Enemy_firingdelay > 0 {Enemy_firingdelay -= 1}

#region Friction?
/*
if speed > 0
{friction = 0.1}
else
{friction = 0}
*/
#endregion

//Room Borders
x = max(x, 100);
x = min(x, room_width-global.edge);
y = max(y, 100);
y = min(y, room_height-global.edge);

#region Death
if hp < 0
{
	repeat random(8)
	{
		instance_create_layer(x,y,"projectiles_layer",oSpark)
	}

	
	repeat random(2)
	{
		instance_create_layer(x,y,"projectiles_layer",oCoin)
	}
	//Explosion Code!!!
	timer -= 1
	image_alpha -= 0.25
	
	if timer < 0
	{
		instance_destroy()
	}

}
#endregion
