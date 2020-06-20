bullet_spawn_at( enemy_big_bullet_obj,
	point_direction( x,y,spaceship_obj.x,spaceship_obj.y ) +
	random_range( -shot_dev,shot_dev ),bullet_speed,0,0 )

alarm_set( 2,shot_interval )