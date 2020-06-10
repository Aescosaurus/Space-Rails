if( can_fire )
{
	var b = bullet_spawn_at( laser_obj,image_angle + 90.0,bullet_speed,0.0,8.0 )
	b.damage = damage
	
	can_fire = false
	alarm_set( 0,refire_time )
}