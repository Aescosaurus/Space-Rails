if( cam_can_see() )
{
	var bullet = bullet_single( x,y,image_angle + 90.0 )
	bullet.x += cos( degtorad( image_angle + 90.0 ) ) * bullet_offset
	bullet.y -= sin( degtorad( image_angle + 90.0 ) ) * bullet_offset
}
alarm_set( 0,refire_time )