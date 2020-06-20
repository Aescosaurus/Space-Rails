for( var i = 0; i < explode_count; ++i )
{
	particle_spawn_explosion( x + random_range( -sprite_width,sprite_width ) / 2,
		y + random_range( -sprite_height,sprite_height ) / 2,
		random_range( 10,14 ) )
}

instance_create_layer( x,y,"instances",station_boss_obj )

instance_destroy()