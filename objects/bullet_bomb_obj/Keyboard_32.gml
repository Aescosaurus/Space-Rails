if( can_fire )
{
	for( var i = 0; i < particle_count; ++i )
	{
		var part = instance_create_layer( x,y,"instances",anti_bullet_obj )
		part.direction = ( i / particle_count ) * 360.0
	}
	
	can_fire = false
	alarm_set( 0,refire_time )
}