/// @description Insert description here
// You can write your code in this editor

timer = -1

randX = random_range(0,room_width)
randY = random_range(0,room_height)

create_cloud [0] = instance_create_depth(-200,randY,350,oMoving_cloud_1)
create_cloud [1] = instance_create_depth(-200,randY,300,oMoving_cloud_2)
create_cloud [2] = instance_create_depth(-200,randY,500,oMoving_cloud_3)