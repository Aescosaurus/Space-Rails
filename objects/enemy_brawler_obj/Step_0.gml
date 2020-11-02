if( spawned_squad && cam_can_see() )
{
	var dt = get_delta_time()
	
	image_angle = point_direction( x,y,spaceship_obj.x,spaceship_obj.y ) - 90.0
	x += x_vel * fly_speed * dt
	y += y_vel * fly_speed * dt
	
	if( target_x < 0 || target_y < 0 )
	{
		target_x = rand_scr_x( target_buffer ) - spaceship_obj.x
		target_y = rand_scr_y( target_buffer ) - spaceship_obj.y
	}
	else if( !stopped )
	{
		x_vel = ( target_x + spaceship_obj.x ) - x
		y_vel = ( target_y + spaceship_obj.y ) - y
		var norm = normalize( x_vel,y_vel )
		x_vel = norm[0]
		y_vel = norm[1]
		
		if( get_len_sq( target_x - x,target_y - y ) < sqr( slow_stop_dist ) )
		{
			// stopped = true
			// fly_speed *= vel_decay
			// target_x = -1
			// target_y = -1
		}
	}
}