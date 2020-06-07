if( ++cur_shot > shot_count )
{
	cur_shot = 0
	phase = 4
	
	alarm_set( 4,phase_4_dur )
}
else
{
	for( var i = 0; i < 4; ++i )
	{
		var x_move = calc_x_ang( image_angle + 45.0 + 90.0 * i ) * shot_offset
		var y_move = calc_y_ang( image_angle + 45.0 + 90.0 * i ) * shot_offset
		bullet_shotgun( x + x_move,y + y_move,
			point_direction( x,y,x + x_move,y + y_move ),
			4,15.0,shot_speed )
	}
	
	alarm_set( 3,shotgun_refire )
}