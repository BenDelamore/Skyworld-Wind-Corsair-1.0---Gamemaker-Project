/// @description Insert description here
// You can write your code in this editor

dir = direction

gravity_direction = 270

grav = 0.03

owner = instance_nearest(x,y,oParent_SaveMe)

with instance_create_layer(x,y,"projectiles_layer",oParticle_trail)
{
	owner = other
}