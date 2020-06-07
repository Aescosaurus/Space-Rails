var bx = argument0
var by = argument1
var dir = argument2

var bullet = instance_create_layer( bx,by,"instances",bullet_obj )
bullet.image_angle = dir - 90.0
bullet.direction = dir

particle_spawn_explosion( bx,by,3 )

return( bullet )