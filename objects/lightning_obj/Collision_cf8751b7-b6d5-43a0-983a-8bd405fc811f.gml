if( damage > 0.0 )
{
	damage = 0.0
	image_alpha = min( image_alpha,0.4 )
	particle_spawn_explosion( other.x,other.y,3 )
}