if( cam_can_see() )
{
	var bullet = instance_create_layer( x,y,"instances",bullet_obj )
	bullet.direction = point_direction( x,y,spaceship_obj.x,spaceship_obj.y )
	bullet.image_angle = direction - 90.0
	bullet.speed *= 1.5
	
	particle_spawn_explosion( bullet.x,bullet.y,3 )
}
alarm_set( 0,refire_time * random_range( 1.0,1.3 ) )