var on_screen = cam_can_see()

if( !spawned_squad && on_screen )
{
	spawned_squad = true
	speed = move_speed
	
	for( var i = 0; i < squad_size - 1; ++i )
	{
		var enemy = instance_copy( false )
		
		enemy.x -= cos( degtorad( direction ) ) * ( ( i + 1 ) * x_spacing )
		enemy.y += sin( degtorad( direction ) ) * ( ( i + 1 ) * y_spacing )
		// enemy.image_angle = image_angle
	}
}
else if( spawned_squad && !on_screen )
{
	if( get_len_sq( spaceship_obj.x - x,spaceship_obj.y - y ) > sqr( despawn_dist ) )
	{
		instance_destroy()
	}
}