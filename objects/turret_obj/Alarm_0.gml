if( cam_can_see() )
{
	// var bx = x + cos( degtorad( image_angle ) ) * bullet_offset
	// var by = y + sin( degtorad( image_angle ) ) * bullet_offset
	var bullet = instance_create_layer( x,y,"instances",bullet_obj )
	bullet.x += cos( degtorad( image_angle + 90.0 ) ) * bullet_offset
	bullet.y -= sin( degtorad( image_angle + 90.0 ) ) * bullet_offset
	bullet.image_angle = image_angle
	bullet.direction = image_angle + 90.0
	
	particle_spawn_explosion( bullet.x,bullet.y,3 )
}
alarm_set( 0,refire_time )