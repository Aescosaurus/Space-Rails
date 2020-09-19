var pow = argument0
var dir = argument1
var dev = argument2
var offset_x = argument3
var offset_y = argument4

var max_scale = max( 1.0,pow / 3.0 )

var part = instance_create_layer( x,y,"effects",particle_obj )
part.direction = dir + random_range( -dev,dev )
part.image_angle = direction

var scale = random_range( 1.0,max_scale )
part.speed = pow / random_range( 2.0,5.0 ) / scale
part.image_xscale = scale
part.image_yscale = scale

with( part )
{
	alarm_set( 0,image_number / ( sprite_get_speed( sprite_index ) / 60.0 * image_speed ) )
}

part.x += calc_x_ang( dir ) * -offset_x + calc_x_ang( dir - 90.0 ) * offset_y
part.y += calc_y_ang( dir ) * -offset_x + calc_y_ang( dir - 90.0 ) * offset_y