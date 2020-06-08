if( !set_cam && cam_can_see() )
{
	instance_destroy( camera_follow_obj )
	
	var cam = view_camera[0]
	var old_width = camera_get_view_width( cam )
	var old_height = camera_get_view_height( cam )
	var new_width = old_width * cam_zoom_amount
	var new_height = old_height * cam_zoom_amount
	
	// camera_set_view_size( cam,new_width,new_height )
	
	// camera_set_view_pos( cam,camera_get_view_x( cam ) + ( old_width - new_width ) / 2,
	// 	camera_get_view_y( cam ) + ( old_height - new_height ) / 2 )
	
	cam_width = new_width
	cam_height = new_height
	
	set_cam = true
}
else if( set_cam )
{
	var dt = get_delta_time()
	var cam = view_camera[0]
	
	var cur_width = camera_get_view_width( cam )
	var cur_height = camera_get_view_height( cam )
	
	camera_set_view_size( cam,
		lerp( cur_width,cam_width,cam_resize * dt ),
		lerp( cur_height,cam_height,cam_resize * dt ) )
	
	camera_set_view_pos( cam,
		lerp( camera_get_view_x( cam ),x - cur_width / 2,cam_follow * dt ),
		lerp( camera_get_view_y( cam ),y - cur_height / 2,cam_follow * dt ) )
}