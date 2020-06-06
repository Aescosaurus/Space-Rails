if( cam_can_see() )
{
	if( phase == 0 )
	{
		for( var i = 0; i < 4; ++i )
		{
			particle_spawn_jet(
				x + cos( degtorad( image_angle + 90.0 * i ) ) * ( laser_offset - 1 ),
				y - sin( degtorad( image_angle + 90.0 * i ) ) * ( laser_offset - 1 ),
				10.0,2.0,
				image_angle + 90 * i,0.0,0.8 )
		}
	}
	else if( phase == 1 )
	{
		if( lasers[0] == noone )
		{
			for( var i = 0; i < 4; ++i )
			{
				lasers[i] = instance_create_layer( x,y,"instances",enemy_laser_obj )
				lasers[i].image_angle = image_angle + 90 * i
				lasers[i].x = x + cos( degtorad( lasers[i].image_angle + 90.0 ) ) * laser_offset
				lasers[i].y = y - sin( degtorad( lasers[i].image_angle + 90.0 ) ) * laser_offset
			}
		}
	}
	else if( phase == 2 )
	{
		image_angle += rot_speed * get_delta_time()
		
		for( var i = 0; i < array_length_1d( lasers ); ++i )
		{
			lasers[i].image_angle = image_angle + 90 * i
			lasers[i].x = x + cos( degtorad( lasers[i].image_angle + 90.0 ) ) * laser_offset
			lasers[i].y = y - sin( degtorad( lasers[i].image_angle + 90.0 ) ) * laser_offset
		}
	}
	else if( phase == 3 )
	{
		
	}
}