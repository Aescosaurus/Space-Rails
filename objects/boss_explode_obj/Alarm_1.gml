for( var i = 0; i < final_explode_count; ++i )
{
	particle_spawn_explosion(
		random_range( x - sprite_width / 2,x + sprite_width / 2 ),
		random_range( y - sprite_height / 2,y + sprite_height / 2 ),
		random_range( 9,15 ) )
}

visible = false
alarm_set( 0,9999 * 60 )
zoom_time = true