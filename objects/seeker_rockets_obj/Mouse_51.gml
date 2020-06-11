if( can_fire )
{
	can_fire = false
	alarm_set( 0,refire )
	
	var rocket = bullet_spawn_at( seeker_obj,image_angle + 90.0,rocket_speed,0,8 )
}