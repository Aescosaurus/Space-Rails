if( cam_can_see() )
{
	bullet_spawn_at( enemy_big_bullet_obj,
		image_angle + 90.0,bullet_speed,
		bullet_x_offset,bullet_y_offset )
	bullet_spawn_at( enemy_big_bullet_obj,
		image_angle + 90.0,bullet_speed,
		-bullet_x_offset,bullet_y_offset )
}
alarm_set( 0,refire )