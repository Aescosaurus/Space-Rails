if( can_shoot )
{
	var laser = instance_create_layer( x,y,"instances",laser_obj )
	
	laser.direction = image_angle + 90.0
	laser.image_angle = image_angle
	
	can_shoot = false
	alarm_set( 0,refire_time )
}