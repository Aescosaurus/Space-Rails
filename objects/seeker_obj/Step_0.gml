if( instance_exists( closest ) )
{
	var target = point_direction( closest.x,closest.y,x,y )
	direction += angle_difference( direction,target ) * rotate_speed * get_delta_time()
	image_angle = direction - 90.0
}