if( can_fire )
{
	instance_destroy( beam )
	beam = instance_create_layer( x,y,"instances",laser_beam_obj )
	alarm_set( 1,beam_duration )
	
	can_fire = false
	alarm_set( 0,refire_time )
}