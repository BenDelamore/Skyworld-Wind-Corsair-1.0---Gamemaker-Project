/// @description Insert description here

//Set random X and Y coordinates
randX = random_range(0,room_width)
randY = random_range(0,room_height)

#region //Initial Cloud set up?
if timer <= -1
{
	repeat (irandom_range(15,20))
	{
		randX = random_range(0,room_width)
		randY = random_range(0,room_height)
		var create_cloud_1 = instance_create_layer(randX,randY,clouds_layer,oMoving_cloud_1)
		with create_cloud_1
		{
			var scale = random_range(0.25,1)
			image_xscale = scale
			image_yscale = scale
			moveX = random_range(scale/2.5,scale/2)
			image_alpha = scale/2
		}
	}

	repeat (irandom_range(15,20))
	{
		randX = random_range(0,room_width)
		randY = random_range(0,room_height)
		var create_cloud_2 = instance_create_layer(randX,randY,clouds_layer,oMoving_cloud_2)
		with create_cloud_2
		{
			var scale = random_range(0.25,1)
			image_xscale = scale
			image_yscale = scale
			moveX = random_range(scale/2.5,scale/2)
			image_alpha = scale/2
		}
	}

	repeat (irandom_range(3,8))
	{
		randX = random_range(0,room_width)
		randY = random_range(0,room_height)
		var create_cloud_3 = instance_create_layer(randX,randY,clouds_layer,oMoving_cloud_3)
		with create_cloud_3
		{
			var scale = random_range(0.75,1.25)
			image_xscale = scale
			image_yscale = scale
			moveX = random_range(scale/10,scale/8)
			moveY = random_range(-0.02,0.02)
			image_alpha = scale/2
		}
	}
}
#endregion

timer += 1

#region //Cloud Spawner
if timer >= room_speed*10
{
	switch (irandom_range(0,array_length_1d(create_cloud)))
	{
		case 0: 
		{
			with instance_create_layer(-200,randY,clouds_layer,oMoving_cloud_1)
			{
				var scale = random_range(0.5,2)
				image_xscale = scale
				image_yscale = scale
				moveX = random_range(scale/2.5,scale/2)
				image_alpha = scale/2
			}
			timer = 0
			break;
		}
		case 1:
		{
			with instance_create_layer(-200,randY,clouds_layer,oMoving_cloud_2)
			{
				var scale = random_range(0.5,2)
				image_xscale = scale
				image_yscale = scale
				moveX = random_range(scale/2.5,scale/2)
				image_alpha = scale/2
			}
			timer = 0
			break;
		}
		case 2:
		{
			with instance_create_layer(-200,randY,clouds_layer,oMoving_cloud_3)
			{
				var scale = random_range(0.75,2)
				image_xscale = scale
				image_yscale = scale
				moveX = random_range(scale/10,scale/8)
				moveY = random_range(-0.02,0.02)
				image_alpha = scale/2
			}
			timer = 0
			break;
		}
	}
}
#endregion
