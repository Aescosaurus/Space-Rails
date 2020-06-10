if( can_fire )
{
	var b = bullet_spawn_at( laser_obj,image_angle + 90.0 - shot_dev,bullet_speed,3.0,6.0 )
	b.damage = damage
	b.image_xscale = bullet_scale
	b.image_yscale = bullet_scale
	
	b = bullet_spawn_at( laser_obj,image_angle + 90.0 + shot_dev,bullet_speed,-3.0,6.0 )
	b.damage = damage
	b.image_xscale = bullet_scale
	b.image_yscale = bullet_scale
	
	can_fire = false
	alarm_set( 0,refire_time )
}