var px = argument0
var py = argument1
var pow = argument2
var dev = argument3
var dir = argument4
var offset = argument5
var decay_mod = argument6

var max_scale = max( 1.0,pow / 3.0 )

// for( var i = 0; i < pow; ++i )
{
	var part = instance_create_layer( px,py,"effects",particle_obj )
	part.direction = dir + random_range( -dev,dev )
	part.image_angle = direction
	
	var scale = random_range( 1.0,max_scale )
	part.speed = pow / random_range( 2.0,5.0 ) / scale
	part.image_xscale = scale
	part.image_yscale = scale
	part.image_speed = decay_mod
	
	with( part )
	{
		alarm_set( 0,image_number / ( sprite_get_speed( sprite_index ) / 60.0 * image_speed ) )
	}
	
	part.x += cos( degtorad( dir ) ) * offset
	part.y -= sin( degtorad( dir ) ) * offset
}