var player = spaceship_obj

if( get_len_sq( player.x - x,player.y - y ) < activate_dist * activate_dist )
{
	for( var i = 0; i < spawn_count; ++i )
	{
		instance_create_layer( x + i * spawn_offset_x,y + i * spawn_offset_y,"instances",spawn_enemy )
	}
	
	instance_destroy()
}