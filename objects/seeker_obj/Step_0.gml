if( instance_exists( closest ) )
{
	speed = move_speed
	
	var target = point_direction( closest.x,closest.y,x,y )
	direction += angle_difference( direction,target ) * rotate_speed * get_delta_time()
	image_angle = direction - 90.0
	
	particle_spawn_jet( x,y,3,4.0,direction + 180.0,3,2.2 )
}