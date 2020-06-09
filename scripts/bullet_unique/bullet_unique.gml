var bx = argument0
var by = argument1
var dir = argument2
var spd = argument3
var type = argument4

var bullet = instance_create_layer( bx,by,"instances",type )
bullet.image_angle = dir - 90.0
bullet.direction = dir
bullet.speed = spd

particle_spawn_explosion( bx,by,3 )

return( bullet )