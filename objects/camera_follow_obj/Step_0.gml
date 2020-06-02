if( !found_targets )
{
	for( var i = 0; i < instance_number( camera_targeter_obj ); ++i )
	{
		targets[i] = instance_find( camera_targeter_obj,i )
	}
	
	for( var i = 0; i < array_length_1d( targets ); ++i )
	{
		for( var j = 0; j < array_length_1d( targets ); ++j )
		{
			if( targets[i].my_id < targets[j].my_id )
			{
				var temp = targets[i]
				targets[i] = targets[j]
				targets[j] = temp
			}
		}
	}
	
	found_targets = true
}
else if( array_length_1d( targets ) > cur_target )
{
	var dt = get_delta_time()
	
	cur_move += move_speed * dt
	
	var new_x = lerp( targets[cur_target - 1].x,targets[cur_target].x,cur_move )
	var new_y = lerp( targets[cur_target - 1].y,targets[cur_target].y,cur_move )
	
	camera_set_view_pos( cam,new_x - cam_width / 2,new_y - cam_height / 2 )
	
	if( cur_move > 1.0 )
	{
		cur_move = 0.0
		++cur_target
	}
}