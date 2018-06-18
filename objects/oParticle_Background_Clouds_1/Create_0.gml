 /// @description Create the particle system
// You can write your code in this editor

//-----------Create particle system
clouds = part_system_create()
	part_system_depth(clouds,1100)
 
#region //-----------Create a cloud particle
cloud_part = part_type_create()
	//part_type_shape(cloud_part,pt_shape_cloud)
	part_type_sprite(cloud_part,sMoving_clouds,false,false,true)
	part_type_orientation(cloud_part,0,0,0,0,1)
	part_type_size(cloud_part,0.25,1,0,0)
	part_type_speed(cloud_part,0.1,0.5,0,0)
	part_type_direction(cloud_part,0,1,0,0)
	part_type_life(cloud_part,24000,26000)
	
#endregion

#region //-----------Spawn the clouds!
camera = camera_get_active()

	x1 = -500
	x2 = -500
	y1 = 0
	y2 = room_height 

clouds_emitter = part_emitter_create(clouds)
	part_emitter_region(clouds,clouds_emitter,x1,x2,y1,y2,ps_shape_rectangle,ps_distr_linear)
	part_emitter_stream(clouds,clouds_emitter,cloud_part,-480)

#endregion

//Fill room with clouds before start???
repeat (5000)
{
	part_system_update(clouds)
}
