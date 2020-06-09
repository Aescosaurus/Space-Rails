var type = argument0
var dir = argument1
var spd = argument2
var offset_x = argument3
var offset_y = argument4

var bullet = instance_create_layer( x,y,"instances",type )

bullet.image_angle = dir - 90.0
bullet.direction = dir
bullet.speed = spd

bullet.x += calc_x_ang( dir ) * -offset_x + calc_x_ang( dir - 90.0 ) * offset_y
bullet.y += calc_y_ang( dir ) * -offset_x + calc_y_ang( dir - 90.0 ) * offset_y

particle_spawn_explosion( bullet.x,bullet.y,3 )

return( bullet )