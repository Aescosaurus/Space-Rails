particle_spawn_explosion(
	random_range( x - sprite_width / 2,x + sprite_width / 2 ),
	random_range( y - sprite_height / 2,y + sprite_height / 2 ),
	random_range( 6,11 ) )

alarm_set( 0,explosion_interval )