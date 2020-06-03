var px = argument0
var py = argument1
var pow = argument2

var max_scale = max( 1.0,pow / 3.0 )

for( var i = 0; i < pow * 5; ++i )
{
	var part = instance_create_layer( px,py,"effects",particle_obj )
	part.direction = random_range( 0.0,360.0 )
	var scale = random_range( 1.0,max_scale )
	part.speed = pow / random_range( 7.0,13.0 ) / scale
	part.image_xscale = scale
	part.image_yscale = scale
	part.image_speed = max_scale / scale
	with( part )
	{
		alarm_set( 0,image_number / ( sprite_get_speed( sprite_index ) / 60.0 * image_speed ) )
	}
}