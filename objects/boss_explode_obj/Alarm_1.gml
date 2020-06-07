for( var i = 0; i < final_explode_count; ++i )
{
	particle_spawn_explosion(
		random_range( x - sprite_width / 2,x + sprite_width / 2 ),
		random_range( y - sprite_height / 2,y + sprite_height / 2 ),
		random_range( 9,15 ) )
}

instance_destroy()