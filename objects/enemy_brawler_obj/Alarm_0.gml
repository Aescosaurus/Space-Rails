if( cam_can_see() )
{
	var b1 = bullet_unique( x,y,image_angle + 90.0,bullet_speed,enemy_big_bullet_obj )
	b1.x += calc_x_ang( image_angle ) * bullet_x_offset + calc_x_ang( image_angle + 90.0 ) * bullet_y_offset
	b1.y += calc_y_ang( image_angle ) * bullet_x_offset + calc_y_ang( image_angle + 90.0 ) * bullet_y_offset
	
	var b2 = bullet_unique( x,y,image_angle + 90.0,bullet_speed,enemy_big_bullet_obj )
	b2.x += calc_x_ang( image_angle ) * bullet_x_offset + calc_x_ang( image_angle + 90.0 ) * -bullet_y_offset
	b2.y += calc_y_ang( image_angle ) * bullet_x_offset + calc_y_ang( image_angle + 90.0 ) * -bullet_y_offset
}
alarm_set( 0,refire )