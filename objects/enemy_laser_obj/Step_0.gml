if( random_range( 0,100 ) < 50 )
{
	particle_spawn_explosion( x,y,3 )
	particle_spawn_explosion(
		x + calc_x_ang( image_angle ) * sprite_height,
		y + calc_y_ang( image_angle ) * sprite_height,
		3 )
}