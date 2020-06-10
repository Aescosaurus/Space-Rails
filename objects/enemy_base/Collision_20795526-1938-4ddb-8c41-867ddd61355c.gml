hp -= other.damage

particle_spawn_explosion( other.x,other.y,3 )

instance_destroy( other )

if( hp < 1 )
{
	particle_spawn_explosion( x,y,10 )
	instance_destroy()
}