if( cam_can_see() )
{
	var bullet = bullet_single( x,y,image_angle + 90.0 )
	bullet.x += calc_x_ang( image_angle ) * bullet_offset
	bullet.y += calc_y_ang( image_angle ) * bullet_offset
}
alarm_set( 0,refire_time )