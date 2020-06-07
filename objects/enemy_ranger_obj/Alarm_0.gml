if( cam_can_see() )
{
	var bullet = bullet_single( x,y,point_direction( x,y,spaceship_obj.x,spaceship_obj.y ) )
	bullet.speed = shot_speed
}
alarm_set( 0,refire_time * random_range( 1.0,1.3 ) )